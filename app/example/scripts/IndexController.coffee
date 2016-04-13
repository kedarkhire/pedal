angular
  .module('example')
  .controller("IndexController", ($scope, example, supersonic) ->
    $scope.example = null
    $scope.showSpinner = true
    $scope.today = new Date();

  )
