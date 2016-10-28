$(function() {
  submitRecipeListener();
});

var submitRecipeListener = function() {
  $(".well").on("submit", "#add-recipe-form", function(event) {
    event.preventDefault();
    console.log("Success!");

    var submitRecipeTarget = $(this);
    var submitRecipeParent = $(this).parent();
    var address = submitRecipeTarget.attr("action")
    var method = submitRecipeTarget.attr("method")
    var recipeData = submitRecipeTarget.serialize()

    // console.log(submitRecipeTarget)
    // console.log(address)
    // console.log(method)
    // console.log(data)

    var request = $.ajax({
      url: address,
      method: method,
      data: recipeData
    })
  })

  request.done(function(response) {
    $(this).replaceWith(response)
  })
}
