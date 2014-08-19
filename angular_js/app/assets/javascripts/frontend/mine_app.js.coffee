do ->
  mine = angular.module('mine', [])

  mine.directive 'stats', ->
    restrict:    'E'
    templateUrl: 'mine_stats.html'


  mine.controller 'statsCtrl', class
    constructor: () ->
      @mines  = 10
      @depots = 10
      @trucks = 10
