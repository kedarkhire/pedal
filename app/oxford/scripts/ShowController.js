angular
  .module('oxford')
  .controller("ShowController", function ($scope, Oxford, supersonic) {
    $scope.oxford = null;
    $scope.showSpinner = true;
    $scope.dataId = undefined;

    var _refreshViewData = function () {
      Oxford.find($scope.dataId).then( function (oxford) {
        $scope.$apply( function () {
          $scope.oxford = oxford;
          $scope.showSpinner = false;
        });
      });
    }

    supersonic.ui.views.current.whenVisible( function () {
      if ( $scope.dataId ) {
        _refreshViewData();
      }
    });

    supersonic.ui.views.current.params.onValue( function (values) {
      $scope.dataId = values.id;
      _refreshViewData();
    });

    $scope.remove = function (id) {
      $scope.showSpinner = true;
      $scope.oxford.delete().then( function () {
        supersonic.ui.layers.pop();
      });
    }
  });