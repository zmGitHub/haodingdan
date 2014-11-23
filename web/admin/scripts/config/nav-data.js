'use strict';
/**
 * Created by turbo on 14-11-21.
 */
angular.module('adminApp').constant('navData', [
  {
    label: '首 页',
    icon: 'icon-dashboard',
    items: [
      {
        state: 'home.index',
        label: '概览',
        breadcrumbs: [
          '首 页',
          '概 览'
        ]
      },
      {
        state: 'home.profiles',
        label: '个人设置',
        breadcrumbs: [
          '首 页',
          '个人设置'
        ]
      }
    ]
  },
  {
    label: '用户管理',
    icon: 'icon-group',
    items: [
      {
        state: 'users.consumer',
        label: '普通用户',
        breadcrumbs: [
          '用户管理',
          '普通用户'
        ]
      },
      {
        state: 'users.enterprise',
        label: '企业用户',
        breadcrumbs: [
          '用户管理',
          '企业用户'
        ]
      }
    ]
  }
]);
