angular
  .module('home')
  .controller("EditController", ($scope, Home, supersonic) ->
    $scope.home = null
    $scope.showSpinner = true

    supersonic.ui.views.current.params.onValue (values) ->
      Home.find(values.id).then (home) ->
        $scope.$apply ->
          $scope.home = home
          $scope.showSpinner = false

    $scope.submitForm = ->
      $scope.showSpinner = true
      $scope.home.save().then ->
        supersonic.ui.modal.hide()

    $scope.cancel = ->
      supersonic.ui.modal.hide()
  )
