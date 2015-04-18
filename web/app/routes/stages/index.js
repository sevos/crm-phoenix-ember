import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    this.store.fetchAll('stage');
    return this.store.filter('stage', function(stage) {
      return !stage.get('isNew');
    });
  }
});
