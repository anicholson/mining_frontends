// Generated by CoffeeScript 1.6.3
(function() {
  var mine;
  mine = angular.module('mine', []);
  mine.directive('stats', function() {
    return {
      restrict: 'E',
      templateUrl: 'mine_stats.html'
    };
  });
  return mine.controller('statsCtrl', (function() {
    function _Class() {
      this.mines = 10;
      this.depots = 10;
      this.trucks = 10;
    }

    return _Class;

  })());
})();
