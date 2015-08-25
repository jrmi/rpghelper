'use strict'

###*
 # @ngdoc function
 # @name rpghelperApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the rpghelperApp
###
angular.module('rpghelperApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
