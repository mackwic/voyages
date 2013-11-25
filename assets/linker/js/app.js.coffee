angular.module('VoyagesApp', ['ui.bootstrap', 'ui.select2']).
controller('ListCtrl', ['$scope', '$timeout', ($scope, $timeout) ->
  # Datepicker stuff
  $scope.today = -> $scope.dt = new Date()

  $scope.showWeeks = true
  $scope.toggleWeeks = -> $scope.showWeeks = not $scope.showWeeks

  $scope.clear = -> $scope.dt = null

  $scope.toggleMin = -> $scope.minDate = if $scope.minDate then null else new Date()

  $scope.open = ->
    $timeout ->
      $scope.opened = true

  $scope.dateOptions =
    'year-format': "'yy'",
    'starting-day': 1

  $scope.format = 'dd/MMMM/yy'

  # Select2 stuff
  $scope.select2Options =
    minimumResultsForSearch: -1

  $scope.destination = 'Marseille'


  initUI = ->
    $scope.today()
    $scope.toggleMin()

  initUI()
])
