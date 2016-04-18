angular
  .module('oxford')
  .controller("ShowController", ($scope, Oxford, supersonic) ->
    $scope.oxford = null
    $scope.showSpinner = true
    $scope.dataId = undefined
    $scope.openMenu = `function(oxfordMenu) {
        supersonic.app.openURL(oxfordMenu);
        };`

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

    $scope.remove = (id) ->
      $scope.showSpinner = true
      $scope.oxford.delete().then ->
        supersonic.ui.layers.pop()
  )
