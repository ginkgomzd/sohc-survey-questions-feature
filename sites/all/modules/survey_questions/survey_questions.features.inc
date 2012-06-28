<?php
/**
 * @file
 * survey_questions.features.inc
 */

/**
 * Implements hook_ctools_plugin_api().
 */
function survey_questions_ctools_plugin_api() {
  list($module, $api) = func_get_args();
  if ($module == "field_group" && $api == "field_group") {
    return array("version" => "1");
  }
}

/**
 * Implements hook_node_info().
 */
function survey_questions_node_info() {
  $items = array(
    'coalition_profile' => array(
      'name' => t('Coalition Profile'),
      'base' => 'node_content',
      'description' => t('Coalition Survey Questions'),
      'has_title' => '1',
      'title_label' => t('Coalition Name'),
      'help' => '',
    ),
  );
  return $items;
}
