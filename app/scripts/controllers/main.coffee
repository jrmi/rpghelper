'use strict'

###*
 # @ngdoc function
 # @name rpghelperApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the rpghelperApp
###
angular.module('rpghelperApp')
  .controller 'MainCtrl', ($scope, generator) ->

    $scope.context_choices = ['woman', 'man', 'fantasy', 'cyber']

    $scope.toggleSelection = (elt) ->
      idx = $scope.context.indexOf(elt)
      # is currently selected
      if (idx > -1)
        $scope.context.splice(idx, 1)
      # is newly selected
      else
        $scope.context.push(elt)

    $scope.text = '---'
    $scope.context = []
    $scope.generated = []

    $scope.update = (domain) ->
      #$scope.text = generator.resolve(domain, $scope.context)
      $scope.generated.unshift(generator.resolve(domain, $scope.context))

    $scope.remove = (index) ->
      $scope.generated.slice(index, 1)

