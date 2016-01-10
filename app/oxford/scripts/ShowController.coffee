angular
  .module('oxford')
  .controller("ShowController", ($scope, Oxford, supersonic) ->
    $scope.oxford = null
    $scope.showSpinner = true
    $scope.dataId = undefined

    _refreshViewData = ->
      Oxford.find($scope.dataId).then (oxford) ->
        $scope.$apply ->
          $scope.oxford = oxford
          $scope.showSpinner = false

    supersonic.ui.views.current.whenVisible ->
      _refreshViewData() if $scope.dataId

    supersonic.ui.views.current.params.onValue (values) ->
      $scope.dataId = values.id
      _refreshViewData()

  )
