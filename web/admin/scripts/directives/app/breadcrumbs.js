'use strict';
/**
 * Created by turbo on 14-11-22.
 */
angular.module('adminApp').directive('appBreadcrumbs', function(){
  return {
    restrict: 'EA',
    replace: true,
    templateUrl: 'views/home/breadcrumbs.html'
  };
});
