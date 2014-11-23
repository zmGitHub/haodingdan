'use strict';
/**
 * Created by turbo on 14-11-23.
 */
angular.module('adminApp').filter('size', function () {
    return function(items) {
        if(!items){
            return 0;
        }
        return items.length || 0;
    };
});