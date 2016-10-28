$(function() {
  submitRecipeListener();
});

var submitRecipeListener = function() {
  $("#add-recipe-form").on("submit", function(event) {
    event.preventDefault();

    var submitRecipeTarget = $(this);
    var submitRecipeParent = $(this).parent();
    var address = submitRecipeTarget.attr("action");
    var method = submitRecipeTarget.attr("method");
    var recipeData = submitRecipeTarget.serialize();

    var request = $.ajax({
      url: address,
      method: method,
      data: recipeData
    });

    request.done(function(response) {
      submitRecipeTarget.replaceWith(response);
    });

  });


};
