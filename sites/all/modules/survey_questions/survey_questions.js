
/// CONFIG:
//Selectors:
/*TODO: verify selector, value!=select_or_other */
//INDPENDENT_ELEMENTS='#edit-field-priorities-und-select[type="checkbox"][value!="select_or_other"';
INDPENDENT_ELEMENTS='[name^="field_priorities[und]"]';
//DEPENDENT_ELEMENTS='[id*=[field_priorities_funded]';
DEPENDENT_ELEMENTS='[name^="field_funding_other_sources[und]["][name*="][field_priorities_funded][und]"]'; /* TODO: make array */
TABS='.field-group-tabs-wrapper.field-group-tabs li.vertical-tab-button a';
AJAX_EVENT_BUBBLE_LISTENER='#edit-field-funding-other-sources'; /* TODO: make array ? */

function  gsl_survey_questions_on_form_load() {

  /*** set onClick for tabs ***/
  tabs = jQuery(TABS);
  tabs.each(
    function(key, tab) {
      jQuery(tab).click(prepare_from_user_input);
    }
  );

  //listen for "add more" button clicks
  jQuery(AJAX_EVENT_BUBBLE_LISTENER).ajaxComplete(add_more_handler);
}

function removeUnSelectedOptions(checkboxes, selected) {
  checkboxes.each(
    function (idx, chk) {
      var found = false;
      selected.each(function(idx, item) {
        if (chk.value == item.value) {
          found = true;
        }
      });
      /*if (!found) {
        jQuery(chk).attr('checked',false)
          .parent().hide();
      } else {
        jQuery(chk).parent().show();
      }*/
    }
  );
}

function prepare_from_user_input() {
  removeUnSelectedOptions(jQuery(DEPENDENT_ELEMENTS+'[type="checkbox"]'), jQuery(INDPENDENT_ELEMENTS+'[type="checkbox"]:checked'));
  strOther = get_other_txbx().attr('value');
  jQuery(DEPENDENT_ELEMENTS+'[type="text"]').each(
    function (idx, txt) {
      txt.value = strOther;
      jQuery(txt).attr('disabled','disabled');
    }
  );
}

function get_other_txbx() {
/*** get Priorities other-textboxes  ***/
  return jQuery(INDPENDENT_ELEMENTS+'[type="text"]');
/* TODO: cache result of jQuery seleciton */
}

function add_more_handler(e,x,settings) {
  if (settings.url != '/system/ajax') return; ;

  prepare_from_user_input();
}
