angular
  .module('delivery')
  .controller("IndexController", ($scope, Delivery, supersonic) ->
    $scope.deliverys = null
    $scope.showSpinner = true

    Delivery.all().whenChanged (deliverys) ->
      $scope.$apply ->
        $scope.deliverys = deliverys
        $scope.showSpinner = false
  )