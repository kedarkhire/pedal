angular
  .module('newsfeed')
  .controller("IndexController", ($scope, Newsfeed, supersonic) ->
    $scope.newsfeeds = null
    $scope.showSpinner = true
    $scope.today = new Date();

    Newsfeed.all().whenChanged (newsfeeds) ->
      $scope.$apply ->
        $scope.newsfeeds = newsfeeds
        $scope.showSpinner = false
  )