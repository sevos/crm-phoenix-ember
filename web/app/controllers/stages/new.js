import Ember from 'ember';

export default Ember.Controller.extend({
  newObject: function() {
    return this.store.createRecord('stage');
  },

  model: function() {
    return this.newObject();
  }.property('model', 'model.isNew'),

  actions: {
    submit: function() {
      this.get('model').save()
    }
  }
});
