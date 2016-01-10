angular
  .module('home')
  .controller("IndexController", ($scope, Home, supersonic) ->
    $scope.homes = null
    $scope.showSpinner = true
    $scope.today = new Date();
    
    Home.all().whenChanged (homes) ->
      $scope.$apply ->
        $scope.homes = homes
        $scope.showSpinner = false
  )