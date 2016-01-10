angular
  .module('home')
  .controller("ShowController", ($scope, Home, supersonic) ->
    $scope.home = null
    $scope.showSpinner = true
    $scope.dataId = undefined

    _refreshViewData = ->
      Home.find($scope.dataId).then (home) ->
        $scope.$apply ->
          $scope.home = home
          $scope.showSpinner = false

    supersonic.ui.views.current.whenVisible ->
      _refreshViewData() if $scope.dataId

    supersonic.ui.views.current.params.onValue (values) ->
      $scope.dataId = values.id
      _refreshViewData()

    $scope.remove = (id) ->
      $scope.showSpinner = true
      $scope.home.delete().then ->
        supersonic.ui.layers.pop()
  )
