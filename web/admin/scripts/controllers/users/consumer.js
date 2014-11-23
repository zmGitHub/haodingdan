'use strict';
/**
 * Created by turbo on 14-11-22.
 */
angular.module('adminApp').controller('ctr.consumer', function ($scope, userList) {
  var vm = $scope.vm = {};
  vm.users = userList;
});
