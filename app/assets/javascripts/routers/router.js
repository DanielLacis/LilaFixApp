LilaFixApp.Routers.Router = Backbone.Router.extend({
  routes: {
    '': 'childrenIndex', // shows the categories
  },

  initialize: function(options) {
    this.$rootEl = options.$rootEl;
  },

  childrenIndex: function() {

  },


  _swapView: function(view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(this._currentView.render().$el);
    $(window).scrollTop(0);
  },

});
