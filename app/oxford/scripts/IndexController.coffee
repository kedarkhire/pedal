angular
  .module('oxford')
  .controller("IndexController", ($scope, Oxford, supersonic) ->
    $scope.oxfords = null
    $scope.showSpinner = true

    Oxford.all().whenChanged (oxfords) ->
      $scope.$apply ->
        $scope.oxfords = oxfords
        $scope.showSpinner = false
  )