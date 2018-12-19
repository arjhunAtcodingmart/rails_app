app.controller("sellerController", ["$scope", "$window", "Main", '$http', function ($scope, $window, Main, $http) {
    $scope.init = function () {
      if (typeof json != 'undefined') {
        angular.forEach(json, function (value, key) {
          $scope[key] = value;
        })
      }
}
    $scope.init();
    $scope.discountCal = function(){
        $scope.data.discount=$scope.data.acPrice-$scope.data.sellPrice
    }
    // $scope.submitData = function () {
    //     $scope.data.image =$scope.fileread
    //     console.log($scope.data)
    //     temp = new Main($scope.data)
    //     temp.save().then(function(data){
    //         if(data.status){
    //             $window.open("http://localhost:3000/",'_self')
    //         }
    //     })
    // }

}])