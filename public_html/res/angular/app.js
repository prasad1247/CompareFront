
var CSApp = angular.module("CSApp", ['ui.router','ngSanitize']);

CSApp.config(['$httpProvider', function($httpProvider) {
        $httpProvider.defaults.useXDomain = true;
        delete $httpProvider.defaults.headers.common['X-Requested-With'];
    }
]);


CSApp.config(function ($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/');
    $stateProvider
            .state('main', {
                url: "/",
                templateUrl: 'res/angular/view/home_1.jsp',
                controller: 'homeCtrl'
            })
            .state('aout', {
                url: '/abc',
                templateUrl: 'res/angular/view/aboutus.jsp',
                controller: 'abcCtrl'
            })
            .state('parse', {
                url: '/{category:[a-zA-Z0-9-]*}/{url:[a-zA-Z0-9-]*}',
                controller: 'testCtrl'
            })
            .state('t', {
                url: '/test',
                templateUrl: function ($stateParams,templateRequest) {
                    console.log("ss " + $stateParams.data.page);
                    return 'res/angular/view/'+$stateParams.data.page+".jsp";
                },
                controller: 'tCtrl',
                params: {
                    data: null
                }
            });

});
CSApp.config(['$locationProvider', function ($locationProvider) {
        $locationProvider.hashPrefix('');
    }]);
CSApp.controller("homeCtrl", function ($scope, $http) {
    $http.get("http://localhost:8084/CompareSmartly/homeserv")
            .then(function (response) {
                $scope.phones = response.data.phones;
                $scope.phones = response.data.phones;
                $scope.pbs = response.data.pbs;
                $scope.tvs = response.data.tvs;
                $scope.headphones = response.data.headphones;


            });
});

CSApp.controller("abcCtrl", function () {
    console.log('abcController');
});

CSApp.service('sharedProps', function () {
    var property;

    return {
        getProperty: function () {
            return property;
        },
        setProperty: function (value) {
            property = value;
        }
    };
});

CSApp.controller("testCtrl", function ($scope, $http, $stateParams, $location, sharedProps, $state) {
    console.log('testCtrl');
    var config = {
        params: {
            category: $stateParams.category,
            url: $stateParams.url
        }
    }
    $http.get("http://localhost:8084/CompareSmartly/AparseUrl", config)
            .then(function (response) {
                $state.go('t', {"data": response.data},{'location':false});
            });
    //  $location.path('/test');

});



CSApp.controller("tCtrl", function ($scope, $http, $stateParams) {
    console.log('tCtrl');
    $scope.mbean=$stateParams.data.pBean.mbean;
    $scope.pBean=$stateParams.data.pBean;
    $scope.pList=$stateParams.data.pList;
    $scope.catList=$stateParams.data.catList;
    $scope.generateMap=$stateParams.data.generateMap;
    $scope.alternateList=$stateParams.data.alternateList;
    console.log($stateParams.data);
});
