angular
  .module('newsfeed')
  .controller 'DrawerController', ($scope, Newsfeed, supersonic) ->
    $scope.navbarTitle = "About"
