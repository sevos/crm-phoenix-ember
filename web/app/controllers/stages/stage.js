import Ember from 'ember';

export default Ember.Controller.extend({
  actions: {
    destroy: function() {
      if (confirm("Delete " + this.get('model.name') + "?")) {
        this.get('model').destroyRecord();
      }
    }
  }
});
