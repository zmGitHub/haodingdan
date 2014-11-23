
/**
 * Created by turbo on 14-11-22.
 */
angular.module('adminApp').service('users', function ($q) {
  var _this = this;
  this.userCache = [];

  this.getAllUsers = function () {
    var def = $q.defer();
    if(this.userCache.length>0){
      def.resolve(_this.userCache);
    }else{
      UsersAjax.getAll(function (returnValue, error) {
        if(error === null){
          _.each(returnValue, function (user) {
              _this.userCache.push(user);
          });
        } else {
          def.reject(error.message);
        }
      });
    }
    return def.promise;
  };
});
