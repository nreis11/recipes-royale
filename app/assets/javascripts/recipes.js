$(function() {
  submitRecipeListener();
});

var submitRecipeListener = function() {
  $("#add-recipe-form").on("submit", function(event) {
    event.preventDefault();
    console.log("Success!");

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
       console.log(response);
      submitRecipeTarget.replaceWith(response);
    });

  });


};
