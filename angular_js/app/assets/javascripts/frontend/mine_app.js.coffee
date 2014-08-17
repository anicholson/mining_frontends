do ->
  mine = angular.module('mine', [])

  mine.controller('statsCtrl', [ ->
  	@counts =
  	  mines: 10
  	  depots: 10
  	  trucks: 10
  ])