angular.module "door"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "main",
        url: "/"
        templateUrl: "app/main/main.html"
        controller: "MainController"
        controllerAs: "main"
      .state "login",
        url: "/login"
        templateUrl: "app/modules/login/login.html"
        controller: "LoginController"

    $urlRouterProvider.otherwise '/'
