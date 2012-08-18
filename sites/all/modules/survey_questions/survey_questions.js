
/// global Priorities checkboxes
  var arrJQPrioritiesChx = [];
/// global Priorities-Funded checkboxes
  var arrJQFundedChx = [];
  var arrJQFundedOther = [];

/// CONFIG:


function  gsl_survey_questions_on_form_load() {

/*** set onClick for tabs ***/
  tabs = jQuery('.field-group-tabs-wrapper.field-group-tabs li.vertical-tab-button a');
  tabs.each(function(key, tab) {
    jQuery(tab).click(psl_tab_onclick);
  });

/*** get priorities checkboxes ***/
  jQuery('#edit-field-priorities-und-select [type="checkbox"]').each(
    function (idx, chkbox) {
      jQchkbox = jQuery(chkbox);

      if (jQchkbox.attr('value') == 'select_or_other' ) return;

      arrJQPrioritiesChx[idx] = jQchkbox;
      arrJQPrioritiesChx[idx].label = jQchkbox.parent().children('label').text();
//      alert(arrJQPrioritiesChx[idx].label+' label added');
    }
  );

/*** get initial Priorities-Funded Checkboxes ***/
  jQuery('[type="text"][id*=field-priorities-funded-und-other]').each(
    function (idx, txtbox) {
      arrJQFundedOther
    }
  );

  //listen for "add more" button clicks
  jQuery('#edit-field-funding-other-sources').ajaxComplete(add_more_handler);
}

function psl_tab_onclick() {
  /*** combine textbox values and checkbox values ***/
  values = [];
  /*** get Priorities Checkboxes **/
  arrJQPrioritiesChx.forEach(
    function (chk, idx) {
      var option = {};

      if (!chk.attr('checked')) return;
      option['value'] = chk.attr('value');
      option['label'] = chk.label;
      values.push(option);
    }
  );

/*** get Priorities-other text boxes  ***/
  txtPriorities = jQuery('.form-item-field-priorities-und-other [type="text"]');

    txtPriorities.each(function(idx, obj) {
    var option = {};
    txt = jQuery(obj);

    if (txt.attr('value') == '') return;

    option['value'] = 'edit-field-priorities-und-select-select-or-other';
    option['label'] = txt.attr('value');

    values.push(option);
  } );

}

function add_more_handler(e,x,settings) {
  if (settings.url != '/system/ajax') {return 0;} ;

  //edit-field-funding-other-sources-und-0-field-priorities-funded-und-other
}
