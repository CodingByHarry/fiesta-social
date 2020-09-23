import 'popper.js'
import 'bootstrap'

$(".js-example-basic-single").select2({
  ajax: {
    data: function(term, page) {
      return {
        term: term,
        page: page
      };
    },
    dataType: "json",
    quietMillis: 100,
    results: function(data, page) {
      return {
        results: data
      };
    },
    //url: $(".js-example-basic-single").data("url")
    url: 'http://localhost:5000/fiesta_items',
    dataType: 'json'
  },
  initSelection: function(item, callback) {
    var data, id, text;
    id = item.val();
    text = item.data('option');
    data = {
      id: id,
      text: text
    };
    return callback(data);
  },
  createSearchChoice: function(term, data) {
    if ($(data).filter(function() {
      return this.text.localeCompare(term) === 0;
    }).length === 0) {
      return {
        id: term,
        text: term
      };
    }
  }
});