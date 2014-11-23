'use strict';
/**
 * Created by turbo on 14-11-23.
 */
angular.module('adminApp').filter('paging', function () {
    return function (items, index, pageSize) {
      if(!items){
          return [];
      }
      var offset = (index - 1)*pageSize;
      return items.splice(offset, offset + pageSize);
    };
});