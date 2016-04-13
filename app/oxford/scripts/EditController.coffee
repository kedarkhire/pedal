angular
  .module('oxford')
  .controller("EditController", ($scope, Oxford, supersonic) ->
    $scope.oxford = null
    $scope.showSpinner = true

    supersonic.ui.views.current.params.onValue (values) ->
      Oxford.find(values.id).then (oxford) ->
        $scope.$apply ->
          $scope.oxford = oxford
          $scope.showSpinner = false

    $scope.submitForm = ->
      $scope.showSpinner = true
      $scope.oxford.save().then ->
        supersonic.ui.modal.hide()

    $scope.cancel = ->
      supersonic.ui.modal.hide()
  )
