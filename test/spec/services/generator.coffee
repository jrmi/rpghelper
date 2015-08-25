'use strict'

describe 'Service: generator', ->

  # load the service's module
  beforeEach module 'rpghelperApp'

  # instantiate service
  generator = {}
  beforeEach inject (_generator_) ->
    generator = _generator_

  it 'should do something', ->
    expect(!!generator).toBe true
