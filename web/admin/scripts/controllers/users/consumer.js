'use strict';
/**
 * Created by turbo on 14-11-22.
 */
angular.module('adminApp').controller('ctr.consumer', function ($scope, userList, users) {
  var vm = $scope.vm = {};

  vm.page = {
    size: 10,
    index: 1
  };
  vm.users = userList;
  vm.del = function(index, id){
    users.remove(id).then(function (result) {
      if(result){
        vm.users.splice(index, 1);
        toastr.success('用户删除成功!', '温馨提示', 4000);
      }else{
        toastr.error('用户删除失败!', '温馨提示', 4000);
      }
    });
  };
});
