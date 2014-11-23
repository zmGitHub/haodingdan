'use strict';
/**
 * Created by turbo on 14-11-22.
 */
angular.module('adminApp').config(function ($stateProvider, $urlRouterProvider) {
  $urlRouterProvider.when('', '/home/index');
  $urlRouterProvider.when('/', '/home/index');
  $urlRouterProvider.otherwise('/notFound');

  $stateProvider.state('notFound', {
    url: '/notFound',
    templateUrl: 'views/home/notFound.html'
  });

  $stateProvider.state('home', {
    url: '/home',
    templateUrl: 'views/home.html',
    controller: 'ctr.home'
  });

  $stateProvider.state('home.index', {
    url: '/index',
    templateUrl: 'views/home/index.html',
    controller: 'ctr.index'
  });

  $stateProvider.state('home.profiles', {
    url: '/profiles',
    templateUrl: 'views/home/profiles.html',
    controller: 'ctr.profiles'
  });

  $stateProvider.state('users', {
    url: '/users',
    templateUrl: 'views/users.html',
    controller: 'ctr.users'
  });

  $stateProvider.state('users.consumer', {
    url: '/consumer',
    templateUrl: 'views/users/consumer.html',
    resolve:{
      userList:['users', function (users) {
        return users.getAllUsers().then(function (result) {
          return result;
        });
      }]
    },
    controller: 'ctr.consumer'
  });

  $stateProvider.state('users.enterprise', {
    url: '/enterprise',
    templateUrl: 'views/users/enterprise.html',
    controller: 'ctr.enterprise'
  });

});
