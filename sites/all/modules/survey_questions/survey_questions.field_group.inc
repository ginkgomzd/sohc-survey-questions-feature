<?php
/**
 * @file
 * survey_questions.field_group.inc
 */

/**
 * Implements hook_field_group_info().
 */
function survey_questions_field_group_info() {
  $export = array();

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_budgetary_information|node|coalition_profile|default';
  $field_group->group_name = 'group_budgetary_information';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'default';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Budgetary Information',
    'weight' => '21',
    'children' => array(
      0 => 'field_cdc_funded',
      1 => 'field_cdc_grantee',
      2 => 'field_cdc_grantee_budget_percent',
      3 => 'field_formal_budget_process',
      4 => 'field_formal_fundraising_plan',
      5 => 'field_annual_budget',
      6 => 'field_member_dues',
      7 => 'field_funding_other_sources',
      8 => 'field_dues_structure',
      9 => 'field_fiscal_agent',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
      ),
    ),
  );
  $export['group_budgetary_information|node|coalition_profile|default'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_budgetary_information|node|coalition_profile|form';
  $field_group->group_name = 'group_budgetary_information';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'form';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Budgetary Information',
    'weight' => '20',
    'children' => array(
      0 => 'field_annual_budget',
      1 => 'field_cdc_funded',
      2 => 'field_cdc_grantee',
      3 => 'field_cdc_grantee_budget_percent',
      4 => 'field_fiscal_agent',
      5 => 'field_formal_budget_process',
      6 => 'field_formal_fundraising_plan',
      7 => 'field_funding_other_sources',
      8 => 'field_member_dues',
      9 => 'field_does_your_coalition_receiv',
      10 => 'field_dues_structure',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
        'required_fields' => 1,
      ),
    ),
  );
  $export['group_budgetary_information|node|coalition_profile|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_coalition_structure|node|coalition_profile|default';
  $field_group->group_name = 'group_coalition_structure';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'default';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Coaltion Structure',
    'weight' => '22',
    'children' => array(
      0 => 'field_501c3',
      1 => 'field_committees',
      2 => 'field_individual_members',
      3 => 'field_membership_size',
      4 => 'field_member_voting',
      5 => 'field_open_membership',
      6 => 'field_membership_application',
      7 => 'field_application_online',
      8 => 'field_regular_meetings',
      9 => 'field_regional_coalition_coll',
      10 => 'field_colocated',
      11 => 'field_rules_url',
      12 => 'field_rules_online',
      13 => 'field_full_time_staff',
      14 => 'field_volunteer_staff',
      15 => 'field_meeting_frequency',
      16 => 'field_membership_composition',
      17 => 'field_officers',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
      ),
    ),
  );
  $export['group_coalition_structure|node|coalition_profile|default'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_coalition_structure|node|coalition_profile|form';
  $field_group->group_name = 'group_coalition_structure';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'form';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Coalition Structure',
    'weight' => '21',
    'children' => array(
      0 => 'field_colocated',
      1 => 'field_committees',
      2 => 'field_full_time_staff',
      3 => 'field_individual_members',
      4 => 'field_meeting_frequency',
      5 => 'field_member_voting',
      6 => 'field_membership_application',
      7 => 'field_membership_composition',
      8 => 'field_membership_size',
      9 => 'field_officers',
      10 => 'field_open_membership',
      11 => 'field_regional_coalition_coll',
      12 => 'field_regular_meetings',
      13 => 'field_volunteer_staff',
      14 => 'field_incorporation_status',
      15 => 'field_501_h_election_',
      16 => 'field_staff_position_documents',
      17 => 'field_charter_files',
      18 => 'field_charter_bylaws',
      19 => 'field_part_time_staff_',
      20 => 'field_has_membership',
      21 => 'field_application_document',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
        'required_fields' => 1,
      ),
    ),
  );
  $export['group_coalition_structure|node|coalition_profile|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_communications|node|coalition_profile|default';
  $field_group->group_name = 'group_communications';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'default';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Communications & Activities',
    'weight' => '26',
    'children' => array(
      0 => 'field_communications',
      1 => 'field_paper_newsletter',
      2 => 'field_enews',
      3 => 'field_webinars',
      4 => 'field_inperson',
      5 => 'field_training_partnering',
      6 => 'field_press_releases',
      7 => 'field_regularly_partner',
      8 => 'field_partner_organizations',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
      ),
    ),
  );
  $export['group_communications|node|coalition_profile|default'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_communications|node|coalition_profile|form';
  $field_group->group_name = 'group_communications';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'form';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Communications & Activities',
    'weight' => '23',
    'children' => array(
      0 => 'field_communications',
      1 => 'field_enews',
      2 => 'field_inperson',
      3 => 'field_paper_newsletter',
      4 => 'field_partner_organizations',
      5 => 'field_press_releases',
      6 => 'field_regularly_partner',
      7 => 'field_training_partnering',
      8 => 'field_webinars',
      9 => 'field_comm_plan_documents',
      10 => 'field_example_events',
      11 => 'field_list_conferences',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
        'required_fields' => 1,
      ),
    ),
  );
  $export['group_communications|node|coalition_profile|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_evaluation|node|coalition_profile|form';
  $field_group->group_name = 'group_evaluation';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'form';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Evaluation',
    'weight' => '26',
    'children' => array(
      0 => 'field_evaluation_plan',
      1 => 'field_evaluation_plan_docs',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
        'required_fields' => 1,
      ),
    ),
  );
  $export['group_evaluation|node|coalition_profile|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_evaulation|node|coalition_profile|default';
  $field_group->group_name = 'group_evaulation';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'default';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Evaluation',
    'weight' => '27',
    'children' => array(
      0 => 'field_evaluation_plan_links',
      1 => 'field_evaluation_plan',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
      ),
    ),
  );
  $export['group_evaulation|node|coalition_profile|default'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_general_information|node|coalition_profile|default';
  $field_group->group_name = 'group_general_information';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'default';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'General Information',
    'weight' => '19',
    'children' => array(
      0 => 'field_mission',
      1 => 'field_goals',
      2 => 'field_facebook',
      3 => 'field_twitter',
      4 => 'field_address',
      5 => 'field_contacts',
      6 => 'field_url',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
      ),
    ),
  );
  $export['group_general_information|node|coalition_profile|default'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_general_information|node|coalition_profile|form';
  $field_group->group_name = 'group_general_information';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'form';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'General Information',
    'weight' => '18',
    'children' => array(
      0 => 'field_address',
      1 => 'field_contacts',
      2 => 'field_facebook',
      3 => 'field_goals',
      4 => 'field_mission',
      5 => 'field_twitter',
      6 => 'field_url',
      7 => 'field_year_coaltion_was_establis',
      8 => 'field_month_coalition_was_establ',
      9 => 'field_director_name',
      10 => 'field_director_title',
      11 => 'title',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
        'required_fields' => 1,
      ),
    ),
  );
  $export['group_general_information|node|coalition_profile|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_main_wrapper|node|coalition_profile|default';
  $field_group->group_name = 'group_main_wrapper';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'default';
  $field_group->parent_name = '';
  $field_group->data = array(
    'label' => 'Main Wrapper',
    'weight' => '0',
    'children' => array(
      0 => 'group_general_information',
      1 => 'group_policy_and_advocacy',
      2 => 'group_budgetary_information',
      3 => 'group_coalition_structure',
      4 => 'group_planning',
      5 => 'group_communications',
      6 => 'group_evaulation',
    ),
    'format_type' => 'tabs',
    'format_settings' => array(
      'formatter' => '',
      'instance_settings' => array(
        'classes' => '',
      ),
    ),
  );
  $export['group_main_wrapper|node|coalition_profile|default'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_main_wrapper|node|coalition_profile|form';
  $field_group->group_name = 'group_main_wrapper';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'form';
  $field_group->parent_name = '';
  $field_group->data = array(
    'label' => 'Main Wrapper',
    'weight' => '0',
    'children' => array(
      0 => 'field_technical_assistance',
      1 => 'field_tech_from_which',
      2 => 'group_budgetary_information',
      3 => 'group_coalition_structure',
      4 => 'group_communications',
      5 => 'group_evaluation',
      6 => 'group_general_information',
      7 => 'group_planning',
      8 => 'group_policy_and_advocacy',
    ),
    'format_type' => 'tabs',
    'format_settings' => array(
      'formatter' => '',
      'instance_settings' => array(
        'classes' => '',
      ),
    ),
  );
  $export['group_main_wrapper|node|coalition_profile|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_planning|node|coalition_profile|default';
  $field_group->group_name = 'group_planning';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'default';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Planning',
    'weight' => '23',
    'children' => array(
      0 => 'field_strategic_plan_length',
      1 => 'field_strategic_plan_links',
      2 => 'field_oral_health_plan',
      3 => 'field_oral_health_links',
      4 => 'field_oral_health_driver',
      5 => 'field_do_hp2020_prior_relate',
      6 => 'field_identifying_priorities',
      7 => 'field_tools_identify_priorities',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
      ),
    ),
  );
  $export['group_planning|node|coalition_profile|default'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_planning|node|coalition_profile|form';
  $field_group->group_name = 'group_planning';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'form';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Planning',
    'weight' => '22',
    'children' => array(
      0 => 'field_identifying_priorities',
      1 => 'field_oral_health_driver',
      2 => 'field_oral_health_plan',
      3 => 'field_do_hp2020_prior_relate',
      4 => 'field_strategic_plan_length',
      5 => 'field_tools_identify_priorities',
      6 => 'field_legislative_plan_documents',
      7 => 'field_action_plan_document',
      8 => 'field_legislative_advocacy',
      9 => 'field_state_plan_documents',
      10 => 'field_hp_2020_priorities',
      11 => 'field_state_plan_priorities',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'formatter' => 'closed',
      'instance_settings' => array(
        'description' => '',
        'classes' => '',
        'required_fields' => 1,
      ),
    ),
  );
  $export['group_planning|node|coalition_profile|form'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_policy_and_advocacy|node|coalition_profile|default';
  $field_group->group_name = 'group_policy_and_advocacy';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'default';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Policy Focus and Program Initiatives',
    'weight' => '20',
    'children' => array(
      0 => 'field_direct_lobby_level',
      1 => 'field_grassroot_lobby_level',
      2 => 'field_does_collaborate',
      3 => 'field_priorities',
      4 => 'field_collab_national',
      5 => 'field_collab_national_orgs',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'label' => 'Policy Focus and Program Initiatives',
      'instance_settings' => array(
        'classes' => '',
        'description' => '',
      ),
      'formatter' => 'closed',
    ),
  );
  $export['group_policy_and_advocacy|node|coalition_profile|default'] = $field_group;

  $field_group = new stdClass();
  $field_group->disabled = FALSE; /* Edit this to true to make a default field_group disabled initially */
  $field_group->api_version = 1;
  $field_group->identifier = 'group_policy_and_advocacy|node|coalition_profile|form';
  $field_group->group_name = 'group_policy_and_advocacy';
  $field_group->entity_type = 'node';
  $field_group->bundle = 'coalition_profile';
  $field_group->mode = 'form';
  $field_group->parent_name = 'group_main_wrapper';
  $field_group->data = array(
    'label' => 'Policy Focus and Program Initiatives',
    'weight' => '19',
    'children' => array(
      0 => 'field_collab_national',
      1 => 'field_collab_national_orgs',
      2 => 'field_direct_lobby_level',
      3 => 'field_does_collaborate',
      4 => 'field_government_entities',
      5 => 'field_grassroot_lobby_level',
      6 => 'field_priorities',
      7 => 'field_does_collab_which_ones',
    ),
    'format_type' => 'tab',
    'format_settings' => array(
      'label' => 'Policy Focus and Program Initiatives',
      'instance_settings' => array(
        'required_fields' => 1,
        'classes' => '',
        'description' => '',
      ),
      'formatter' => 'closed',
    ),
  );
  $export['group_policy_and_advocacy|node|coalition_profile|form'] = $field_group;

  return $export;
}
