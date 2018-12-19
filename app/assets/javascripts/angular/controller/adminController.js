app.controller("adminController", ["$scope", "$window", "Main", '$http', function ($scope, $window, Main, $http) {
    $scope.init = function () {
      if (typeof json != 'undefined') {
        angular.forEach(json, function (value, key) {
          $scope[key] = value;
        })
      }
  }
    $scope.init();

  $scope.deleteData = function(data) {
      if(data.accountType!='admin'){
        temp = new Main({id: data.id})
        temp.delete().then(function(){
        $scope.datum.splice($scope.datum.indexOf(data),1)
      })
    }
  } 
}])