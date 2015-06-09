window.LilaFixApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $('div#main');
    var router = new LilaFixApp.Routers.Router({$rootEl: $rootEl});
    alert('hello from LFA');
    Backbone.history.start();
  }
};
