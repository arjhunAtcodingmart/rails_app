app.factory('Main', ["railsResourceFactory", "railsSerializer", function(railsResourceFactory, railsSerializer) {
  var Main = railsResourceFactory({
    url: '/user_type_seller',
    name: 'user_type_seller',
  });
  return Main;
}]);