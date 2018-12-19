
app.directive('fileread', function () {
    return function (scope, element, attrs) {
      element.bind("change", function (event) {
        scope.fileread = event.target.files
      });
    };
   });