CLASS zcl_mass_patch_dir DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    INTERFACES if_apj_rt_run.

  PRIVATE SECTION.


ENDCLASS.

CLASS zcl_mass_patch_dir IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    TRY.
        if_apj_rt_run~execute( ).
        out->write( 'Done - check the application log' ).
      CATCH cx_root INTO DATA(lx).
        out->write( lx->get_text( ) ).
    ENDTRY.

    "success code line start

*    DATA lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy.
*    DATA ls_entity_key    TYPE zscm_dir_process=>tys_a_document_info_record_typ.
*    DATA ls_business_data TYPE zscm_dir_process=>tys_a_document_info_record_typ.
*    DATA lx_current       TYPE REF TO cx_root.
*
*    "1. Pick one test document
*    SELECT SINGLE documentinforecorddoctype,
*                  documentinforecorddocnumber,
*                  documentinforecorddocversion,
*                  documentinforecorddocpart,
*                  externaldocumentstatus
*      FROM i_documentinforecord
*      WHERE documentinforecorddoctype = 'SPP'
*      AND ExternalDocumentStatus = 'WR'
*      INTO @DATA(ls_doc).
*
*    IF sy-subrc <> 0.
*      out->write( 'No SPP document found to test' ).
*      RETURN.
*    ENDIF.
*
*    out->write( |Testing { ls_doc-documentinforecorddoctype }/{ ls_doc-documentinforecorddocnumber }/| &&
*                |{ ls_doc-documentinforecorddocversion }/{ ls_doc-documentinforecorddocpart }, | &&
*                |current status { ls_doc-externaldocumentstatus }| ).
*
*    TRY.
*        "2. Create proxy
*        DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
*                                 comm_scenario = 'YY1_GENERIC_SELF' ).
*        DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).
*
*
*        "3. Build entity URL
*        DATA(lv_path) = |/sap/opu/odata/sap/API_DMS_PROCESS_SRV/A_DocumentInfoRecord(| &&
*          |DocumentInfoRecordDocType='{ ls_doc-documentinforecorddoctype }',| &&
*          |DocumentInfoRecordDocNumber='{ ls_doc-documentinforecorddocnumber }',| &&
*          |DocumentInfoRecordDocVersion='{ ls_doc-documentinforecorddocversion }',| &&
*          |DocumentInfoRecordDocPart='{ ls_doc-documentinforecorddocpart }')|.
*
*        DATA(lo_req) = lo_http_client->get_http_request( ).
*
*        "4a. Fetch CSRF token
*        lo_req->set_uri_path( lv_path ).
*        lo_req->set_header_field( i_name = 'x-csrf-token' i_value = 'fetch' ).
*        lo_req->set_header_field( i_name = 'Accept'       i_value = 'application/json' ).
*        DATA(lo_resp) = lo_http_client->execute( if_web_http_client=>get ).
*        DATA(lv_token) = lo_resp->get_header_field( 'x-csrf-token' ).
*        out->write( |Step 4a: GET { lo_resp->get_status( )-code }| ).
*
*        "4b. PATCH
*        lo_req->set_header_field( i_name = 'x-csrf-token' i_value = lv_token ).
*        lo_req->set_header_field( i_name = 'If-Match'     i_value = '*' ).
*        lo_req->set_header_field( i_name = 'Content-Type' i_value = 'application/json' ).
*        lo_req->set_text( `{"InternalDocumentStatus":"IW"}` ).
*        lo_resp = lo_http_client->execute( if_web_http_client=>patch ).
*
*        out->write( |Step 4b: PATCH { lo_resp->get_status( )-code }: { lo_resp->get_text( ) }| ).
*
*      CATCH cx_root INTO DATA(lx_error).
*        "keep your existing exception-chain loop here
*    ENDTRY.

    "success code line end---

    "--------------------
*        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
*          is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
*                                              proxy_model_id      = 'ZSCM_DIR_PROCESS'
*                                              proxy_model_version = '0001' )
*          io_http_client           = lo_http_client
*          iv_relative_service_root = '/sap/opu/odata/sap/API_DMS_PROCESS_SRV' ).
*        out->write( 'Step 2: proxy created' ).
*
*        "3. Build key and data
*        ls_entity_key = VALUE #(
*          document_info_record_doc_t = ls_doc-documentinforecorddoctype
*          document_info_record_doc_v = ls_doc-documentinforecorddocversion
*          document_info_record_doc_n = ls_doc-documentinforecorddocnumber
*          document_info_record_doc_p = ls_doc-documentinforecorddocpart ).
*
*        ls_business_data = ls_entity_key.
*        ls_business_data-internal_document_status = 'IA'.
*
*        "4. PATCH
*        "4. PATCH
*        DATA lo_resource TYPE REF TO /iwbep/if_cp_resource_entity.
*        DATA lo_request  TYPE REF TO /iwbep/if_cp_request_update.
*
*        lo_resource = lo_client_proxy->create_resource_for_entity_set( 'A_DOCUMENT_INFO_RECORD'
*                                     )->navigate_with_key( ls_entity_key ).
*
*        lo_request = lo_resource->create_request_for_update(
*                       /iwbep/if_cp_request_update=>gcs_update_semantic-patch ).
*
*
*        lo_request->set_business_data( ls_business_data ).
*
**        lo_request->set_business_data(
**          is_business_data = ls_business_data
**          it_provided_property = VALUE #( ( REF #( ls_business_data-internal_document_status ) ) )
**             ).
*
*        "if-match fix for 428 precondition
*        lo_request->set_if_match( '*' ).
*
*        DATA(lo_response) = lo_request->execute( ).
*        out->write( 'Step 4: PATCH executed' ).
*
*        CLEAR ls_business_data.
*        lo_response->get_business_data( IMPORTING es_business_data = ls_business_data ).
*        out->write( |SUCCESS - new status: { ls_business_data-internal_document_status }| ).
*
*      CATCH cx_root INTO DATA(lx_error).
*        "Print the whole exception chain; the root cause is often in PREVIOUS
*        lx_current = lx_error.
*        WHILE lx_current IS BOUND.
*          out->write( |ERROR { cl_abap_typedescr=>describe_by_object_ref( lx_current )->get_relative_name( ) }: | &&
*                      |{ lx_current->get_text( ) }| ).
*          lx_current = lx_current->previous.
*        ENDWHILE.
*    ENDTRY.
  ENDMETHOD.

  METHOD if_apj_rt_run~execute.

    " ---- add application log ----
    DATA: application_log           TYPE REF TO if_bali_log,
          application_log_free_text TYPE REF TO if_bali_free_text_setter.

    TRY.

        DATA(lo_log) = cl_bali_log=>create_with_header(
                                      header = cl_bali_header_setter=>create( object = 'ZSCM_DIR_LOG'
                                                                           subobject = 'ZSCM_DIR_SUBLOG' ) ).
        " 1. ---- READ data from CDS ----
        SELECT documentinforecorddoctype,
               documentinforecorddocnumber,
               documentinforecorddocversion,
               documentinforecorddocpart,
               externaldocumentstatus
          FROM i_documentinforecord
          WHERE documentinforecorddoctype IN ( 'SPP' )
            AND externaldocumentstatus   = 'WR'
          INTO TABLE @DATA(lt_docs).

        " add log - total docs entry
        lo_log->add_item( cl_bali_free_text_setter=>create(
                  severity = if_bali_constants=>c_severity_status
                  text     = |Step 1: { lines( lt_docs ) } SPP document(s) selected from CDS| ) ).


        " if entry is empty, log it
        IF lt_docs IS INITIAL.

          " add log entry
          lo_log->add_item( item = cl_bali_free_text_setter=>create(
              severity = if_bali_constants=>c_severity_status text = 'no record found' ) ).

          " save log
          cl_bali_log_db=>get_instance( )->save_log_2nd_db_connection( log = lo_log
                                                                       assign_to_current_appl_job = abap_true ).
          RETURN.
        ENDIF.


        DATA ls_entity_key    TYPE zscm_dir_process=>tys_a_document_info_record_typ.
        DATA ls_business_data TYPE zscm_dir_process=>tys_a_document_info_record_typ.
        DATA lo_http_client   TYPE REF TO if_web_http_client.
        "DATA lo_resource      TYPE REF TO /iwbep/if_cp_resource_entity.
        DATA lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy.
        "DATA lo_response      TYPE REF TO /iwbep/if_cp_response_update.
        "DATA lo_request       TYPE REF TO /iwbep/if_cp_request_update.


        " 2. Create OData Proxy
*    DATA lo_proxy TYPE REF TO /iwbep/if_cp_client_proxy.

        DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                               comm_scenario = 'YY1_GENERIC_SELF' ).

        lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

*        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
*                is_proxy_model_key = VALUE #( repository_id       = 'DEFAULT'
*                                              proxy_model_id      = 'ZSCM_DIR_PROCESS'
*                                              proxy_model_version = '0001' )

*        io_http_client     = lo_http_client.
*        iv_relative_service_root = '/sap/opu/odata/sap/API_DMS_PROCESS_SRV' ).

        ASSERT lo_http_client IS BOUND.


        " need add into log?

        " 3. PATCH Docs
        " log before loop
        lo_log->add_item( cl_bali_free_text_setter=>create(
          severity = if_bali_constants=>c_severity_status
          text     = 'Start processing documents' ) ).

        DATA lv_failed        TYPE abap_bool.
        DATA lv_code          TYPE i.
        DATA lv_msg           TYPE string.

        LOOP AT lt_docs INTO DATA(ls_doc).
          CLEAR: lv_failed, lv_code, lv_msg.

          DATA(lv_id) = |{ ls_doc-documentinforecorddoctype }/{ ls_doc-documentinforecorddocnumber }/|
                     && |{ ls_doc-documentinforecorddocversion }/{ ls_doc-documentinforecorddocpart }|.

          TRY.
              DATA(lo_client) = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

              "Set entity key
              ls_entity_key = VALUE #(
                document_info_record_doc_t  = ls_doc-documentinforecorddoctype
                document_info_record_doc_v  = ls_doc-documentinforecorddocversion
                document_info_record_doc_n  = ls_doc-documentinforecorddocnumber
                document_info_record_doc_p  = ls_doc-documentinforecorddocpart ).



              DATA(lo_req) = lo_http_client->get_http_request( ).

              lo_req->delete_header_field( 'If-Match' ).
              lo_req->delete_header_field( 'If-None-Match' ).
              lo_req->delete_header_field( 'Content-Type' ).
              lo_req->set_text( `` ).

              lo_req->set_uri_path( |/sap/opu/odata/sap/API_DMS_PROCESS_SRV/A_DocumentInfoRecord(| &&
                |DocumentInfoRecordDocType='{ ls_doc-documentinforecorddoctype }',| &&
                |DocumentInfoRecordDocNumber='{ ls_doc-documentinforecorddocnumber }',| &&
                |DocumentInfoRecordDocVersion='{ ls_doc-documentinforecorddocversion }',| &&
                |DocumentInfoRecordDocPart='{ ls_doc-documentinforecorddocpart }')| ).
              lo_req->set_header_field( i_name = 'Accept'       i_value = 'application/json' ).
              lo_req->set_header_field( i_name = 'x-csrf-token' i_value = 'fetch' ).

              DATA(lo_get) = lo_http_client->execute( if_web_http_client=>get ).
              DATA(lv_etag) = lo_get->get_header_field( 'ETag' ).


              IF lv_etag IS INITIAL.
                lv_code   = lo_get->get_status( )-code.
                lv_msg    = |No ETag from GET ({ lv_code })|.
                lv_failed = abap_true.
              ELSE.
                lo_req->set_header_field( i_name = 'x-csrf-token' i_value = lo_get->get_header_field( 'x-csrf-token' ) ).
                lo_req->set_header_field( i_name = 'If-Match'     i_value = lv_etag ).
                lo_req->set_header_field( i_name = 'Content-Type' i_value = 'application/json' ).
                lo_req->set_text( `{"InternalDocumentStatus":"IW"}` ).

                DATA(lo_patch) = lo_http_client->execute( if_web_http_client=>patch ).
                IF lo_patch->get_status( )-code <> 204.
                  lv_code   = lo_patch->get_status( )-code.
                  lv_msg    = lo_patch->get_text( ).
                  lv_failed = abap_true.
                ENDIF.
              ENDIF.

              lo_client->close( ).

*          " Get updated entity
*          CLEAR ls_business_data.
*          lo_response->get_business_data( IMPORTING es_business_data = ls_business_data ).

              " log - success update log

*            CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
*              lv_code = lx_remote->http_status_code.
*              lv_msg  = lx_remote->get_text( ).
*              lv_failed = abap_true.
*
*            CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
*              lv_msg = lx_gateway->get_text( ).
*              lv_failed = abap_true.

            CATCH cx_web_http_client_error INTO DATA(lx_http_error).
              lv_msg = lx_http_error->get_text( ).
              lv_failed = abap_true.
          ENDTRY.


          IF lv_failed = abap_false.
            lo_log->add_item( cl_bali_free_text_setter=>create(
              severity = if_bali_constants=>c_severity_status
              text     = CONV #( |Document { lv_id } PATCH OK| ) ) ).
          ELSE.
            DATA(lv_text) = |Document { lv_id } update failed ({ lv_code }): { lv_msg }|.
            lo_log->add_item( cl_bali_free_text_setter=>create(
              severity = if_bali_constants=>c_severity_error
              text     = CONV #( substring( val = lv_text
                                                len = nmin( val1 = 200 val2 = strlen( lv_text ) ) ) ) ) ).
          ENDIF.
        ENDLOOP.

        " save log in once
        cl_bali_log_db=>get_instance( )->save_log_2nd_db_connection(
        log = lo_log assign_to_current_appl_job = abap_true ).




      CATCH /iwbep/cx_gateway cx_http_dest_provider_error cx_web_http_client_error INTO DATA(lx_v4_error).
        " setup failed: logging here needs its own TRY
        TRY.
            lo_log->add_item( cl_bali_free_text_setter=>create(
              severity = if_bali_constants=>c_severity_error
              text     = CONV #( |Setup failed: { lx_v4_error->get_text( ) }| ) ) ).
            cl_bali_log_db=>get_instance( )->save_log_2nd_db_connection(
              log = lo_log assign_to_current_appl_job = abap_true ).
          CATCH cx_bali_runtime.
        ENDTRY.

      CATCH cx_bali_runtime.
        " logging failed
    ENDTRY.

  ENDMETHOD.

ENDCLASS.
