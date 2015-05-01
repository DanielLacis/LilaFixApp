window.LilaFixApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    // var $rootEl = $('div#main');
    // var $navEl = $('div#nav-el');
    // var $modalEl = $('div#new-project-modal');
    // var categories = new LaunchAssist.Collections.Categories();
    // var currentUser = new LaunchAssist.Models.CurrentUser();
    // var router = new LaunchAssist.Routers.Router({currentUser: currentUser, categories: categories, $rootEl: $rootEl, $navEl:  $navEl, $modalEl: $modalEl});
    // alert('Hello from Backbone!');
    Backbone.history.start();
  }
};
