app.controller("buyerController", ["$scope", "$window", "Main", '$http', function ($scope, $window, Main, $http) {
    $scope.init = function () {
      if (typeof json != 'undefined') {
        angular.forEach(json, function (value, key) {
          $scope[key] = value;
        })
      }
  }
    $scope.init();
}])