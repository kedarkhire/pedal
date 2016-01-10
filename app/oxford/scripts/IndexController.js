angular
  .module('oxford')
  .controller("IndexController", function ($scope, Oxford, supersonic) {
    $scope.oxfords = null;
    $scope.showSpinner = true;

    Oxford.all().whenChanged( function (oxfords) {
        $scope.$apply( function () {
          $scope.oxfords = oxfords;
          $scope.showSpinner = false;
        });
    });
  });