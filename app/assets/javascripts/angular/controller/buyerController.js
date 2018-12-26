app.controller("buyerController", ["$scope", "$window", "Main","Buyer", '$http', function ($scope, $window, Main,Buyer, $http) {
    $scope.init = function () {
      if (typeof json != 'undefined') {
        angular.forEach(json, function (value, key) {
          $scope[key] = value;
        })
      }
  }
  $scope.init();
  $scope.quantity=1;
  $scope.minus=function(){
  if($scope.quantity>1){
    $scope.quantity--;
    }
  }
  $scope.plus=function(data){
    if($scope.quantity<data){
      $scope.quantity++;
    }
  }
  $scope.buyHandler=function(data){
    debugger;
    data.productId=data.id
    data.selectedQuantity=$scope.quantity
    delete data.id
    temp = new Buyer(data)
      temp.save().then(function(data){
        data.id = data.productId
        data.productLeft = data.productQuantity - $scope.quantity;
        temp = new Main(data)
        temp.save().then(function(data){
          if(data.status){
              $window.open("http://localhost:3000/",'_self')
          }
    })
  })
}
$scope.dataHandle=function(data){
  $scope.data=data
}
$scope.submitReason=function(data){
  alert($scope.reason)
  data.reason = $scope.reason
  console.log(data)
  debugger;
  temp = new Buyer(data)
  temp.save().then(function(data){
    if(data.status){
      $window.open("http://localhost:3000/",'_self')
    }
  })
}
}])