angular
  .module('oxford')
  .controller("NewController", ($scope, Oxford, supersonic) ->
    $scope.oxford = {}

    $scope.submitForm = ->
      $scope.showSpinner = true
      newoxford = new Oxford($scope.oxford)
      newoxford.save().then ->
        supersonic.ui.modal.hide()

    $scope.cancel = ->
      supersonic.ui.modal.hide()
  )
