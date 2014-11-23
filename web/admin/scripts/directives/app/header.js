'use strict';
/**
 * Created by turbo on 14-11-20.
 */
angular.module('adminApp').directive('appHeader',function(){
  return {
    restrict: 'EA',
    replace: true,
    templateUrl: 'views/home/header.html'
  };
});
