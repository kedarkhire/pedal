angular
  .module('home')
  .controller("NewController", ($scope, Home, supersonic) ->
    $scope.home = {}

    $scope.submitForm = ->
      $scope.showSpinner = true
      newhome = new Home($scope.home)
      newhome.save().then ->
        supersonic.ui.modal.hide()

    $scope.cancel = ->
      supersonic.ui.modal.hide()
  )
