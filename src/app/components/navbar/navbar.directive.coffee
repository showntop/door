angular.module "door"
  .directive 'acmeNavbar', ->

    NavbarController = ($scope, moment) ->
      $scope.dirs = [
        "accordion", "carousel", "dropdown", "popover", "tabs", "typeahead",
        "alert", "collapse", "modal", "progressbar", "timepicker", "buttons",
        "datepicker", "pagination", "rating", "tooltip"
      ]

      vm = this
      # "vm.creation" is avaible by directive option "bindToController: true"
      vm.relativeDate = moment(vm.creationDate).fromNow()
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      scope: creationDate: '='
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
