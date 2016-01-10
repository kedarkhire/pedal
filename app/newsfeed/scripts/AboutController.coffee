angular
  .module('newsfeed')
  .controller 'SettingsController', ($scope, Newsfeed, supersonic) ->
    $scope.navbarTitle = "About"
