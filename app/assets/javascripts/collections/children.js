LilaFixApp.Collections.Children= Backbone.Collection.extend({
  url: 'api/children',
  model: LilaFixApp.Models.Child,


  getOrFetch: function(id) {
    var child = this.get(id);
    if (child) {
      child.fetch();
    } else {
      child = new LilaFixApp.Models.Child({id: id});
      child.fetch({
        success: function() {
          this.add(child);
        }.bind(this)
      });
    }
    return child;
  }
});
