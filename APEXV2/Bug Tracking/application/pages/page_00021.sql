prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(2333082129878819730)
,p_tab_set=>'TS2'
,p_name=>'Assignee'
,p_step_title=>'Assignee'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(2509222245997328767)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3797424040496072790)
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'<p>Assignees may be managed by any developer with contributor privilege.  Access control roles are assigned by application administrators from the application administration console.</p>'
,p_last_upd_yyyymmddhh24miss=>'20180206023051'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2509226831180456812)
,p_plug_name=>'Assignee'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader'
,p_plug_template=>wwv_flow_api.id(1225690169574288324)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2509301632368441311)
,p_plug_name=>'About'
,p_region_css_classes=>'infoTextRegion'
,p_plug_template=>wwv_flow_api.id(1225683798473288318)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<p>Assignees may be managed by any developer with contributor privilege.  Access control roles are assigned by application administrators from the application administration console.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2509227428638456815)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9594180850946618485)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2509227048513456815)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9594180850946618485)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Assignee'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_security_scheme=>wwv_flow_api.id(3797424040496072790)
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2509227135503456815)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(9594180850946618485)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_security_scheme=>wwv_flow_api.id(3797424040496072790)
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2509227234661456815)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2509226831180456812)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1225705764797288347)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_api.id(3797424040496072790)
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2509228041708456816)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2509228241706456818)
,p_name=>'P21_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2509226831180456812)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2509228655015456831)
,p_name=>'P21_USERNAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2509226831180456812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Name'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1225704949468288344)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2509228841289456831)
,p_name=>'P21_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2509226831180456812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1225704860700288343)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2509229053962456831)
,p_name=>'P21_LAST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2509226831180456812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(1225704860700288343)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2509229249006456831)
,p_name=>'P21_EMAIL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2509226831180456812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1225704860700288343)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2509229459897456831)
,p_name=>'P21_WORK_PHONE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2509226831180456812)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Phone'
,p_source=>'WORK_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>20
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1225704860700288343)
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2727482653002686434)
,p_name=>'P21_ACCESS_LEVEL_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(2509226831180456812)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'ACCESS_LEVEL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(2784303631140050478)
,p_validation_name=>'Safe to delete'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_bt_sw_defects',
'where assigned_to_id = :P21_ID;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'There is at least one bug assigned to this user.'
,p_when_button_pressed=>wwv_flow_api.id(2509227234661456815)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2509231736850456836)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_BT_USERS'
,p_attribute_02=>'EBA_BT_USERS'
,p_attribute_03=>'P21_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2509231946186456836)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_BT_USERS'
,p_attribute_02=>'EBA_BT_USERS'
,p_attribute_03=>'P21_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_security_scheme=>wwv_flow_api.id(3797424040496072790)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2509232157482456836)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2509227234661456815)
,p_security_scheme=>wwv_flow_api.id(3797424040496072790)
);
end;
/