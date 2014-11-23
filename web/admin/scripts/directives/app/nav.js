'use strict';
/**
 * Created by turbo on 14-11-20.
 */
angular.module('adminApp').directive('navBar', function (navData) {
  return {
    restrict: 'EA',
    replace: true,
    scope: {},
    templateUrl: 'views/home/nav.html',
    link: function (scope) {
      var vm = scope.vm = {};
      vm.data = navData;
      if(! ('ace' in window) ) window['ace'] = {};
      jQuery(function($) {
        window['ace'].click_event = $.fn.tap ? 'tap' : 'click';
      });
      jQuery(function() {
        /**
         * 导航栏点击折叠事件绑定
         */
        ace.handle_side_menu(jQuery);
        /**
         * 页面设置  例如: 一键换肤
         */
        ace.general_things(jQuery);
      });

    }
  };
});
