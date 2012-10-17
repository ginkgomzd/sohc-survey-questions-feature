(function ($) {

  Drupal.behaviors.jqueryExpander = {
    attach: function (context, settings) {

      $(document).ready(function () {
        // hide the parent div of N/A inputs for checkboxes on Coalition Profile forms
        $('.node-coalition_profile-form .form-type-checkbox input[value=""]').parent().hide();
        $('.node-coalition_profile-form .form-type-radios input[value="_none"]').parent().hide();
      });

    }
  };

}(jQuery));
