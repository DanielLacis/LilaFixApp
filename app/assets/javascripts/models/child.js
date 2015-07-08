LilaFixApp.Models.Child = Backbone.Model.extend({
  urlRoot: 'api/child',

  photo: function() {
    // if (this._projects) {
    //   return this._projects;
    // } else {
    //   this._projects = new LaunchAssist.Collections.Projects([], {categoryId: this.get('id')});
    // }
    // return this._projects;
  }
});
