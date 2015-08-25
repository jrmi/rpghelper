'use strict'

###*
 # @ngdoc service
 # @name rpghelperApp.generator
 # @description
 # # generator
 # Service in the rpghelperApp.
###
angular.module('rpghelperApp')
.service 'generator', ->
  # AngularJS will instantiate a singleton by calling "new" on this function
  domains = {}

  rand = (min, max) ->
    Math.random() * (max - min) + min

  randint = (min, max) ->
    Math.round(rand(min, max))

  add = (domain, label, weight = 1, conditions = [], contextAddition = [], vars = {}) ->
    if !(domains[domain]?)
      domains[domain] = []
    if angular.isArray(label)
      for elt in label
        domains[domain].push(label: elt, weight: weight, conditions: conditions, additions: contextAddition, vars: vars)
    else
      domains[domain].push(label: label, weight: weight, conditions: conditions, additions: contextAddition, vars: vars)

  valid_in_context = (conditions, context) ->
    for cond in conditions
      if cond[0] == '!'
        if cond[1..] in context
          return false
      else
        if cond not in context
          return false
    return true

  total_weight = (domain, context) ->
    domain.reduce (prev, cur, i, arr) =>
      if valid_in_context(cur.conditions, context)
        prev + cur.weight
      else
        prev
    , 0

  pick = (list) ->
    return list[randint(0, list.length - 1)]

  weighted_pick = (domain, context) ->
    # Pick an element from
    random_num = rand(0, total_weight(domain, context))
    weight_sum = 0

    for elt in domain
      if valid_in_context(elt.conditions, context)
        weight_sum += elt.weight
        weight_sum = +weight_sum.toFixed(2)

        if random_num <= weight_sum
          return elt

  resolve = (sentence='{start}', context=[], vars={}, level=0) ->
    # Resolve sentence by replacing each part by random one
    result = sentence.replace /\{([^\}]*)\}/g, (match, name) ->
      if domains[name]?
        part = weighted_pick(domains[name], context)

        if angular.isFunction(part.label)
          label = part.label(context)
        else
          label = part.label

        angular.extend(vars, part.vars)

        return resolve(label, context.concat(part.additions), vars, level + 1)
      else
        return '...'

    if level == 0
      return result.replace /\$([^ ]*)/g, (match, name) ->
        if vars[name]?
          return vars[name]
        else
          return '...'
    else
      return result

  return resolve: resolve, add: add, pick: pick