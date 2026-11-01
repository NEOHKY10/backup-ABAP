"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_DMS_PROCESS_SRV</em>
CLASS zscm_dir_process DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type DOCUMENT_INFO_RECORD_DOC_N
        document_info_record_doc_n TYPE c LENGTH 25,
        "! Used for primitive type DOCUMENT_INFO_RECORD_DOC_P
        document_info_record_doc_p TYPE c LENGTH 3,
        "! Used for primitive type DOCUMENT_INFO_RECORD_DOC_T
        document_info_record_doc_t TYPE c LENGTH 3,
        "! Used for primitive type DOCUMENT_INFO_RECORD_DOC_V
        document_info_record_doc_v TYPE c LENGTH 2,
        "! Used for primitive type EXTERNAL_DOCUMENT_STATUS
        external_document_status   TYPE c LENGTH 2,
        "! Used for primitive type INTERNAL_DOCUMENT_STATUS
        internal_document_status   TYPE c LENGTH 2,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function ChangeStatus</p>
      "! <em>with the internal name</em> CHANGE_STATUS
      BEGIN OF tys_parameters_1,
        "! DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! ExternalDocumentStatus
        external_document_status   TYPE c LENGTH 2,
        "! InternalDocumentStatus
        internal_document_status   TYPE c LENGTH 2,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocumentInfoRecordCharcType</p>
      BEGIN OF tys_a_document_info_record_c_4,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! <em>Key property</em> DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! <em>Key property</em> DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! <em>Key property</em> CharcInternalID
        charc_internal_id          TYPE c LENGTH 10,
        "! <em>Key property</em> ClassType
        class_type                 TYPE c LENGTH 3,
        "! KeyDate
        key_date                   TYPE datn,
      END OF tys_a_document_info_record_c_4,
      "! <p class="shorttext synchronized">List of A_DocumentInfoRecordCharcType</p>
      tyt_a_document_info_record_c_4 TYPE STANDARD TABLE OF tys_a_document_info_record_c_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocumentInfoRecordCharcValueType</p>
      BEGIN OF tys_a_document_info_record_c_5,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! <em>Key property</em> DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! <em>Key property</em> DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! <em>Key property</em> ClassType
        class_type                 TYPE c LENGTH 3,
        "! <em>Key property</em> CharcInternalID
        charc_internal_id          TYPE c LENGTH 10,
        "! <em>Key property</em> CharcValuePositionNumber
        charc_value_position_numbe TYPE c LENGTH 3,
        "! KeyDate
        key_date                   TYPE datn,
        "! CharcValueDependency
        charc_value_dependency     TYPE c LENGTH 1,
        "! CharcValue
        charc_value                TYPE c LENGTH 70,
        "! CharcFromNumericValue
        charc_from_numeric_value   TYPE /iwbep/v4_float,
        "! CharcFromNumericValueUnit
        charc_from_numeric_value_u TYPE c LENGTH 3,
        "! CharcToNumericValue
        charc_to_numeric_value     TYPE /iwbep/v4_float,
        "! CharcToNumericValueUnit
        charc_to_numeric_value_uni TYPE c LENGTH 3,
        "! CharcFromDecimalValue
        charc_from_decimal_value   TYPE p LENGTH 16 DECIMALS 14,
        "! CharcToDecimalValue
        charc_to_decimal_value     TYPE p LENGTH 16 DECIMALS 14,
        "! CharcFromAmount
        charc_from_amount          TYPE p LENGTH 13 DECIMALS 3,
        "! CharcToAmount
        charc_to_amount            TYPE p LENGTH 13 DECIMALS 3,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! CharcFromDate
        charc_from_date            TYPE datn,
        "! CharcToDate
        charc_to_date              TYPE datn,
        "! CharcFromTime
        charc_from_time            TYPE timn,
        "! CharcToTime
        charc_to_time              TYPE timn,
        "! CharacteristicAuthor
        characteristic_author      TYPE c LENGTH 1,
        "! CharcMaintAuthGrp
        charc_maint_auth_grp       TYPE c LENGTH 3,
      END OF tys_a_document_info_record_c_5,
      "! <p class="shorttext synchronized">List of A_DocumentInfoRecordCharcValueType</p>
      tyt_a_document_info_record_c_5 TYPE STANDARD TABLE OF tys_a_document_info_record_c_5 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocumentInfoRecordClassType</p>
      BEGIN OF tys_a_document_info_record_c_6,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! <em>Key property</em> DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! <em>Key property</em> DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! <em>Key property</em> ClassInternalID
        class_internal_id          TYPE c LENGTH 10,
        "! KeyDate
        key_date                   TYPE datn,
        "! ClassType
        class_type                 TYPE c LENGTH 3,
      END OF tys_a_document_info_record_c_6,
      "! <p class="shorttext synchronized">List of A_DocumentInfoRecordClassType</p>
      tyt_a_document_info_record_c_6 TYPE STANDARD TABLE OF tys_a_document_info_record_c_6 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocumentInfoRecordClassCharcType</p>
      BEGIN OF tys_a_document_info_record_c_7,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! <em>Key property</em> DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! <em>Key property</em> DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! <em>Key property</em> ClassInternalID
        class_internal_id          TYPE c LENGTH 10,
        "! <em>Key property</em> CharcInternalID
        charc_internal_id          TYPE c LENGTH 10,
        "! KeyDate
        key_date                   TYPE datn,
        "! ClassType
        class_type                 TYPE c LENGTH 3,
      END OF tys_a_document_info_record_c_7,
      "! <p class="shorttext synchronized">List of A_DocumentInfoRecordClassCharcType</p>
      tyt_a_document_info_record_c_7 TYPE STANDARD TABLE OF tys_a_document_info_record_c_7 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocumentInfoRecordDescType</p>
      BEGIN OF tys_a_document_info_record_d_2,
        "! Delete_mc
        delete_mc                  TYPE abap_bool,
        "! Update_mc
        update_mc                  TYPE abap_bool,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! <em>Key property</em> DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! <em>Key property</em> DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! DocumentDescription
        document_description       TYPE c LENGTH 40,
        "! LongTextExists
        long_text_exists           TYPE c LENGTH 1,
        "! DocInfoRecdShortText
        doc_info_recd_short_text   TYPE c LENGTH 40,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
      END OF tys_a_document_info_record_d_2,
      "! <p class="shorttext synchronized">List of A_DocumentInfoRecordDescType</p>
      tyt_a_document_info_record_d_2 TYPE STANDARD TABLE OF tys_a_document_info_record_d_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocumentInfoRecordDocStsVHType</p>
      BEGIN OF tys_a_document_info_record_d_3,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! <em>Key property</em> ExternalDocumentStatus
        external_document_status   TYPE c LENGTH 2,
        "! InternalDocumentStatus
        internal_document_status   TYPE c LENGTH 2,
        "! DocumentStatusName
        document_status_name       TYPE c LENGTH 16,
      END OF tys_a_document_info_record_d_3,
      "! <p class="shorttext synchronized">List of A_DocumentInfoRecordDocStsVHType</p>
      tyt_a_document_info_record_d_3 TYPE STANDARD TABLE OF tys_a_document_info_record_d_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocumentInfoRecordType</p>
      BEGIN OF tys_a_document_info_record_typ,
        "! ChangeStatus_ac
        change_status_ac           TYPE abap_bool,
        "! Update_mc
        update_mc                  TYPE abap_bool,
        "! to_DocDesc_oc
        to_doc_desc_oc             TYPE abap_bool,
        "! to_ProductObj_oc
        to_product_obj_oc          TYPE abap_bool,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! <em>Key property</em> DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! <em>Key property</em> DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! DocumentInfoRecord
        document_info_record       TYPE c LENGTH 70,
        "! InternalDocumentStatus
        internal_document_status   TYPE c LENGTH 2,
        "! LaboratoryOrDesignOffice
        laboratory_or_design_offic TYPE c LENGTH 3,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! ChangeNumber
        change_number              TYPE c LENGTH 12,
        "! DocInfoRecdIsMarkedForDeletion
        doc_info_recd_is_marked_fo TYPE abap_bool,
        "! IsDocInfoRecdCreatedFromCAD
        is_doc_info_recd_created_f TYPE abap_bool,
        "! IsDocInfoRecdStructure
        is_doc_info_recd_structure TYPE c LENGTH 1,
        "! ResponsiblePersonName
        responsible_person_name    TYPE c LENGTH 12,
        "! CreationDateTime
        creation_date_time         TYPE timestamp,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! ExternalDocumentStatus
        external_document_status   TYPE c LENGTH 2,
        "! DocumentStatusName
        document_status_name       TYPE c LENGTH 16,
      END OF tys_a_document_info_record_typ,
      "! <p class="shorttext synchronized">List of A_DocumentInfoRecordType</p>
      tyt_a_document_info_record_typ TYPE STANDARD TABLE OF tys_a_document_info_record_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocInfoRecdObjLinkBOMType</p>
      BEGIN OF tys_a_doc_info_recd_obj_link_2,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! <em>Key property</em> DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! <em>Key property</em> DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! <em>Key property</em> LinkedSAPObject
        linked_sapobject           TYPE c LENGTH 10,
        "! <em>Key property</em> LinkedSAPObjectKey
        linked_sapobject_key       TYPE c LENGTH 90,
        "! <em>Key property</em> DocObjectLinkCounter
        doc_object_link_counter    TYPE c LENGTH 4,
      END OF tys_a_doc_info_recd_obj_link_2,
      "! <p class="shorttext synchronized">List of A_DocInfoRecdObjLinkBOMType</p>
      tyt_a_doc_info_recd_obj_link_2 TYPE STANDARD TABLE OF tys_a_doc_info_recd_obj_link_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocInfoRecdObjLinkChgRecdType</p>
      BEGIN OF tys_a_doc_info_recd_obj_link_3,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! <em>Key property</em> DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! <em>Key property</em> DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! <em>Key property</em> LinkedSAPObject
        linked_sapobject           TYPE c LENGTH 10,
        "! <em>Key property</em> LinkedSAPObjectKey
        linked_sapobject_key       TYPE c LENGTH 90,
        "! <em>Key property</em> DocObjectLinkCounter
        doc_object_link_counter    TYPE c LENGTH 4,
      END OF tys_a_doc_info_recd_obj_link_3,
      "! <p class="shorttext synchronized">List of A_DocInfoRecdObjLinkChgRecdType</p>
      tyt_a_doc_info_recd_obj_link_3 TYPE STANDARD TABLE OF tys_a_doc_info_recd_obj_link_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_DocInfoRecdObjLinkProductType</p>
      BEGIN OF tys_a_doc_info_recd_obj_link_4,
        "! Delete_mc
        delete_mc                  TYPE abap_bool,
        "! <em>Key property</em> DocumentInfoRecordDocType
        document_info_record_doc_t TYPE c LENGTH 3,
        "! <em>Key property</em> DocumentInfoRecordDocNumber
        document_info_record_doc_n TYPE c LENGTH 25,
        "! <em>Key property</em> DocumentInfoRecordDocVersion
        document_info_record_doc_v TYPE c LENGTH 2,
        "! <em>Key property</em> DocumentInfoRecordDocPart
        document_info_record_doc_p TYPE c LENGTH 3,
        "! <em>Key property</em> LinkedSAPObject
        linked_sapobject           TYPE c LENGTH 10,
        "! <em>Key property</em> LinkedSAPObjectKey
        linked_sapobject_key       TYPE c LENGTH 90,
        "! <em>Key property</em> DocObjectLinkCounter
        doc_object_link_counter    TYPE c LENGTH 4,
        "! ChangedDateTime
        changed_date_time          TYPE timestamp,
      END OF tys_a_doc_info_recd_obj_link_4,
      "! <p class="shorttext synchronized">List of A_DocInfoRecdObjLinkProductType</p>
      tyt_a_doc_info_recd_obj_link_4 TYPE STANDARD TABLE OF tys_a_doc_info_recd_obj_link_4 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_DocumentInfoRecord
        "! <br/> Collection of type 'A_DocumentInfoRecordType'
        a_document_info_record     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOCUMENT_INFO_RECORD',
        "! A_DocumentInfoRecordCharc
        "! <br/> Collection of type 'A_DocumentInfoRecordCharcType'
        a_document_info_record_cha TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOCUMENT_INFO_RECORD_CHA',
        "! A_DocumentInfoRecordClass
        "! <br/> Collection of type 'A_DocumentInfoRecordClassType'
        a_document_info_record_cla TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOCUMENT_INFO_RECORD_CLA',
        "! A_DocumentInfoRecordCharcValue
        "! <br/> Collection of type 'A_DocumentInfoRecordCharcValueType'
        a_document_info_record_c_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOCUMENT_INFO_RECORD_C_2',
        "! A_DocumentInfoRecordClassCharc
        "! <br/> Collection of type 'A_DocumentInfoRecordClassCharcType'
        a_document_info_record_c_3 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOCUMENT_INFO_RECORD_C_3',
        "! A_DocumentInfoRecordDesc
        "! <br/> Collection of type 'A_DocumentInfoRecordDescType'
        a_document_info_record_des TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOCUMENT_INFO_RECORD_DES',
        "! A_DocumentInfoRecordDocStsVH
        "! <br/> Collection of type 'A_DocumentInfoRecordDocStsVHType'
        a_document_info_record_doc TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOCUMENT_INFO_RECORD_DOC',
        "! A_DocInfoRecdObjLinkBOM
        "! <br/> Collection of type 'A_DocInfoRecdObjLinkBOMType'
        a_doc_info_recd_obj_link_b TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOC_INFO_RECD_OBJ_LINK_B',
        "! A_DocInfoRecdObjLinkChgRecd
        "! <br/> Collection of type 'A_DocInfoRecdObjLinkChgRecdType'
        a_doc_info_recd_obj_link_c TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOC_INFO_RECD_OBJ_LINK_C',
        "! A_DocInfoRecdObjLinkProduct
        "! <br/> Collection of type 'A_DocInfoRecdObjLinkProductType'
        a_doc_info_recd_obj_link_p TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_DOC_INFO_RECD_OBJ_LINK_P',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      BEGIN OF gcs_function_import,
        "! ChangeStatus
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        change_status TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'CHANGE_STATUS',
      END OF gcs_function_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      BEGIN OF gcs_bound_function,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_DocumentInfoRecordCharcType</p>
        "! See also structure type {@link ..tys_a_document_info_record_c_4}
        BEGIN OF a_document_info_record_c_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Valuation
            to_valuation TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_VALUATION',
          END OF navigation,
        END OF a_document_info_record_c_4,
        "! <p class="shorttext synchronized">Internal names for A_DocumentInfoRecordCharcValueType</p>
        "! See also structure type {@link ..tys_a_document_info_record_c_5}
        BEGIN OF a_document_info_record_c_5,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_document_info_record_c_5,
        "! <p class="shorttext synchronized">Internal names for A_DocumentInfoRecordClassType</p>
        "! See also structure type {@link ..tys_a_document_info_record_c_6}
        BEGIN OF a_document_info_record_c_6,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Characteristics
            to_characteristics TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CHARACTERISTICS',
          END OF navigation,
        END OF a_document_info_record_c_6,
        "! <p class="shorttext synchronized">Internal names for A_DocumentInfoRecordClassCharcType</p>
        "! See also structure type {@link ..tys_a_document_info_record_c_7}
        BEGIN OF a_document_info_record_c_7,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_document_info_record_c_7,
        "! <p class="shorttext synchronized">Internal names for A_DocumentInfoRecordDescType</p>
        "! See also structure type {@link ..tys_a_document_info_record_d_2}
        BEGIN OF a_document_info_record_d_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_DocInfoRecord
            to_doc_info_record TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DOC_INFO_RECORD',
          END OF navigation,
        END OF a_document_info_record_d_2,
        "! <p class="shorttext synchronized">Internal names for A_DocumentInfoRecordDocStsVHType</p>
        "! See also structure type {@link ..tys_a_document_info_record_d_3}
        BEGIN OF a_document_info_record_d_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_document_info_record_d_3,
        "! <p class="shorttext synchronized">Internal names for A_DocumentInfoRecordType</p>
        "! See also structure type {@link ..tys_a_document_info_record_typ}
        BEGIN OF a_document_info_record_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_BomObj
            to_bom_obj         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_BOM_OBJ',
            "! to_Characteristics
            to_characteristics TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CHARACTERISTICS',
            "! to_ChgRecdObj
            to_chg_recd_obj    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CHG_RECD_OBJ',
            "! to_Classification
            to_classification  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CLASSIFICATION',
            "! to_DocDesc
            to_doc_desc        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DOC_DESC',
            "! to_DocStatusVH
            to_doc_status_vh   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DOC_STATUS_VH',
            "! to_ProductObj
            to_product_obj     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_OBJ',
          END OF navigation,
        END OF a_document_info_record_typ,
        "! <p class="shorttext synchronized">Internal names for A_DocInfoRecdObjLinkBOMType</p>
        "! See also structure type {@link ..tys_a_doc_info_recd_obj_link_2}
        BEGIN OF a_doc_info_recd_obj_link_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_DocInfoRecord
            to_doc_info_record TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DOC_INFO_RECORD',
          END OF navigation,
        END OF a_doc_info_recd_obj_link_2,
        "! <p class="shorttext synchronized">Internal names for A_DocInfoRecdObjLinkChgRecdType</p>
        "! See also structure type {@link ..tys_a_doc_info_recd_obj_link_3}
        BEGIN OF a_doc_info_recd_obj_link_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_DocInfoRecord
            to_doc_info_record TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DOC_INFO_RECORD',
          END OF navigation,
        END OF a_doc_info_recd_obj_link_3,
        "! <p class="shorttext synchronized">Internal names for A_DocInfoRecdObjLinkProductType</p>
        "! See also structure type {@link ..tys_a_doc_info_recd_obj_link_4}
        BEGIN OF a_doc_info_recd_obj_link_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_DocInfoRecord
            to_doc_info_record TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DOC_INFO_RECORD',
          END OF navigation,
        END OF a_doc_info_recd_obj_link_4,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define A_DocumentInfoRecordCharcType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_document_info_record_c_4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_DocumentInfoRecordCharcValueType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_document_info_record_c_5 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_DocumentInfoRecordClassType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_document_info_record_c_6 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_DocumentInfoRecordClassCharcType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_document_info_record_c_7 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_DocumentInfoRecordDescType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_document_info_record_d_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_DocumentInfoRecordDocStsVHType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_document_info_record_d_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_DocumentInfoRecordType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_document_info_record_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_DocInfoRecdObjLinkBOMType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_doc_info_recd_obj_link_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_DocInfoRecdObjLinkChgRecdType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_doc_info_recd_obj_link_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_DocInfoRecdObjLinkProductType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_doc_info_recd_obj_link_4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ChangeStatus</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_change_status RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZSCM_DIR_PROCESS IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_DMS_PROCESS_SRV' ) ##NO_TEXT.

    def_a_document_info_record_c_4( ).
    def_a_document_info_record_c_5( ).
    def_a_document_info_record_c_6( ).
    def_a_document_info_record_c_7( ).
    def_a_document_info_record_d_2( ).
    def_a_document_info_record_d_3( ).
    def_a_document_info_record_typ( ).
    def_a_doc_info_recd_obj_link_2( ).
    def_a_doc_info_recd_obj_link_3( ).
    def_a_doc_info_recd_obj_link_4( ).
    def_change_status( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'DOCUMENT_INFO_RECORD_DOC_N'
                            iv_element             = VALUE tys_types_for_prim_types-document_info_record_doc_n( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'DOCUMENT_INFO_RECORD_DOC_P'
                            iv_element             = VALUE tys_types_for_prim_types-document_info_record_doc_p( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'DOCUMENT_INFO_RECORD_DOC_T'
                            iv_element             = VALUE tys_types_for_prim_types-document_info_record_doc_t( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'DOCUMENT_INFO_RECORD_DOC_V'
                            iv_element             = VALUE tys_types_for_prim_types-document_info_record_doc_v( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'EXTERNAL_DOCUMENT_STATUS'
                            iv_element             = VALUE tys_types_for_prim_types-external_document_status( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'INTERNAL_DOCUMENT_STATUS'
                            iv_element             = VALUE tys_types_for_prim_types-internal_document_status( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

  ENDMETHOD.


  METHOD def_a_document_info_record_c_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOCUMENT_INFO_RECORD_C_4'
                                    is_structure              = VALUE tys_a_document_info_record_c_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocumentInfoRecordCharcType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOCUMENT_INFO_RECORD_CHA' ).
    lo_entity_set->set_edm_name( 'A_DocumentInfoRecordCharc' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'CharcInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_VALUATION' ).
    lo_navigation_property->set_edm_name( 'to_Valuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_C_5' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_document_info_record_c_5.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOCUMENT_INFO_RECORD_C_5'
                                    is_structure              = VALUE tys_a_document_info_record_c_5( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocumentInfoRecordCharcValueType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOCUMENT_INFO_RECORD_C_2' ).
    lo_entity_set->set_edm_name( 'A_DocumentInfoRecordCharcValue' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'CharcInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_VALUE_POSITION_NUMBE' ).
    lo_primitive_property->set_edm_name( 'CharcValuePositionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_VALUE_DEPENDENCY' ).
    lo_primitive_property->set_edm_name( 'CharcValueDependency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_NUMERIC_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcFromNumericValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_NUMERIC_VALUE_U' ).
    lo_primitive_property->set_edm_name( 'CharcFromNumericValueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_NUMERIC_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcToNumericValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_NUMERIC_VALUE_UNI' ).
    lo_primitive_property->set_edm_name( 'CharcToNumericValueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_DECIMAL_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcFromDecimalValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_DECIMAL_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcToDecimalValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'CharcFromAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'CharcToAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_DATE' ).
    lo_primitive_property->set_edm_name( 'CharcFromDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_DATE' ).
    lo_primitive_property->set_edm_name( 'CharcToDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_TIME' ).
    lo_primitive_property->set_edm_name( 'CharcFromTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_TIME' ).
    lo_primitive_property->set_edm_name( 'CharcToTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC_AUTHOR' ).
    lo_primitive_property->set_edm_name( 'CharacteristicAuthor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_MAINT_AUTH_GRP' ).
    lo_primitive_property->set_edm_name( 'CharcMaintAuthGrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_document_info_record_c_6.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOCUMENT_INFO_RECORD_C_6'
                                    is_structure              = VALUE tys_a_document_info_record_c_6( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocumentInfoRecordClassType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOCUMENT_INFO_RECORD_CLA' ).
    lo_entity_set->set_edm_name( 'A_DocumentInfoRecordClass' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ClassInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CHARACTERISTICS' ).
    lo_navigation_property->set_edm_name( 'to_Characteristics' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_C_7' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_document_info_record_c_7.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOCUMENT_INFO_RECORD_C_7'
                                    is_structure              = VALUE tys_a_document_info_record_c_7( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocumentInfoRecordClassCharcType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOCUMENT_INFO_RECORD_C_3' ).
    lo_entity_set->set_edm_name( 'A_DocumentInfoRecordClassCharc' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ClassInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'CharcInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_document_info_record_d_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOCUMENT_INFO_RECORD_D_2'
                                    is_structure              = VALUE tys_a_document_info_record_d_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocumentInfoRecordDescType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOCUMENT_INFO_RECORD_DES' ).
    lo_entity_set->set_edm_name( 'A_DocumentInfoRecordDesc' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETE_MC' ).
    lo_primitive_property->set_edm_name( 'Delete_mc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UPDATE_MC' ).
    lo_primitive_property->set_edm_name( 'Update_mc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'DocumentDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LONG_TEXT_EXISTS' ).
    lo_primitive_property->set_edm_name( 'LongTextExists' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_INFO_RECD_SHORT_TEXT' ).
    lo_primitive_property->set_edm_name( 'DocInfoRecdShortText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGED_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'ChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DOC_INFO_RECORD' ).
    lo_navigation_property->set_edm_name( 'to_DocInfoRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_document_info_record_d_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOCUMENT_INFO_RECORD_D_3'
                                    is_structure              = VALUE tys_a_document_info_record_d_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocumentInfoRecordDocStsVHType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOCUMENT_INFO_RECORD_DOC' ).
    lo_entity_set->set_edm_name( 'A_DocumentInfoRecordDocStsVH' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_DOCUMENT_STATUS' ).
    lo_primitive_property->set_edm_name( 'ExternalDocumentStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNAL_DOCUMENT_STATUS' ).
    lo_primitive_property->set_edm_name( 'InternalDocumentStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_STATUS_NAME' ).
    lo_primitive_property->set_edm_name( 'DocumentStatusName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_document_info_record_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOCUMENT_INFO_RECORD_TYP'
                                    is_structure              = VALUE tys_a_document_info_record_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocumentInfoRecordType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOCUMENT_INFO_RECORD' ).
    lo_entity_set->set_edm_name( 'A_DocumentInfoRecord' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_STATUS_AC' ).
    lo_primitive_property->set_edm_name( 'ChangeStatus_ac' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UPDATE_MC' ).
    lo_primitive_property->set_edm_name( 'Update_mc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TO_DOC_DESC_OC' ).
    lo_primitive_property->set_edm_name( 'to_DocDesc_oc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TO_PRODUCT_OBJ_OC' ).
    lo_primitive_property->set_edm_name( 'to_ProductObj_oc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecord' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNAL_DOCUMENT_STATUS' ).
    lo_primitive_property->set_edm_name( 'InternalDocumentStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LABORATORY_OR_DESIGN_OFFIC' ).
    lo_primitive_property->set_edm_name( 'LaboratoryOrDesignOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_INFO_RECD_IS_MARKED_FO' ).
    lo_primitive_property->set_edm_name( 'DocInfoRecdIsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DOC_INFO_RECD_CREATED_F' ).
    lo_primitive_property->set_edm_name( 'IsDocInfoRecdCreatedFromCAD' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_DOC_INFO_RECD_STRUCTURE' ).
    lo_primitive_property->set_edm_name( 'IsDocInfoRecdStructure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RESPONSIBLE_PERSON_NAME' ).
    lo_primitive_property->set_edm_name( 'ResponsiblePersonName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGED_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'ChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_DOCUMENT_STATUS' ).
    lo_primitive_property->set_edm_name( 'ExternalDocumentStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_STATUS_NAME' ).
    lo_primitive_property->set_edm_name( 'DocumentStatusName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_BOM_OBJ' ).
    lo_navigation_property->set_edm_name( 'to_BomObj' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOC_INFO_RECD_OBJ_LINK_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CHARACTERISTICS' ).
    lo_navigation_property->set_edm_name( 'to_Characteristics' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_C_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CHG_RECD_OBJ' ).
    lo_navigation_property->set_edm_name( 'to_ChgRecdObj' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOC_INFO_RECD_OBJ_LINK_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CLASSIFICATION' ).
    lo_navigation_property->set_edm_name( 'to_Classification' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_C_6' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DOC_DESC' ).
    lo_navigation_property->set_edm_name( 'to_DocDesc' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_D_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DOC_STATUS_VH' ).
    lo_navigation_property->set_edm_name( 'to_DocStatusVH' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_D_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_OBJ' ).
    lo_navigation_property->set_edm_name( 'to_ProductObj' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOC_INFO_RECD_OBJ_LINK_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_doc_info_recd_obj_link_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOC_INFO_RECD_OBJ_LINK_2'
                                    is_structure              = VALUE tys_a_doc_info_recd_obj_link_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocInfoRecdObjLinkBOMType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOC_INFO_RECD_OBJ_LINK_B' ).
    lo_entity_set->set_edm_name( 'A_DocInfoRecdObjLinkBOM' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINKED_SAPOBJECT' ).
    lo_primitive_property->set_edm_name( 'LinkedSAPObject' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINKED_SAPOBJECT_KEY' ).
    lo_primitive_property->set_edm_name( 'LinkedSAPObjectKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_OBJECT_LINK_COUNTER' ).
    lo_primitive_property->set_edm_name( 'DocObjectLinkCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DOC_INFO_RECORD' ).
    lo_navigation_property->set_edm_name( 'to_DocInfoRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_doc_info_recd_obj_link_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOC_INFO_RECD_OBJ_LINK_3'
                                    is_structure              = VALUE tys_a_doc_info_recd_obj_link_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocInfoRecdObjLinkChgRecdType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOC_INFO_RECD_OBJ_LINK_C' ).
    lo_entity_set->set_edm_name( 'A_DocInfoRecdObjLinkChgRecd' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINKED_SAPOBJECT' ).
    lo_primitive_property->set_edm_name( 'LinkedSAPObject' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINKED_SAPOBJECT_KEY' ).
    lo_primitive_property->set_edm_name( 'LinkedSAPObjectKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_OBJECT_LINK_COUNTER' ).
    lo_primitive_property->set_edm_name( 'DocObjectLinkCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DOC_INFO_RECORD' ).
    lo_navigation_property->set_edm_name( 'to_DocInfoRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_doc_info_recd_obj_link_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_DOC_INFO_RECD_OBJ_LINK_4'
                                    is_structure              = VALUE tys_a_doc_info_recd_obj_link_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_DocInfoRecdObjLinkProductType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_DOC_INFO_RECD_OBJ_LINK_P' ).
    lo_entity_set->set_edm_name( 'A_DocInfoRecdObjLinkProduct' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELETE_MC' ).
    lo_primitive_property->set_edm_name( 'Delete_mc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_primitive_property->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINKED_SAPOBJECT' ).
    lo_primitive_property->set_edm_name( 'LinkedSAPObject' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINKED_SAPOBJECT_KEY' ).
    lo_primitive_property->set_edm_name( 'LinkedSAPObjectKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_OBJECT_LINK_COUNTER' ).
    lo_primitive_property->set_edm_name( 'DocObjectLinkCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGED_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'ChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DOC_INFO_RECORD' ).
    lo_navigation_property->set_edm_name( 'to_DocInfoRecord' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_DOCUMENT_INFO_RECORD_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_change_status.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'CHANGE_STATUS' ).
    lo_function->set_edm_name( 'ChangeStatus' ) ##NO_TEXT.

    " Name of the runtime structure that represents the parameters of this operation
    lo_function->/iwbep/if_v4_pm_fu_advanced~set_parameter_structure_info( VALUE tys_parameters_1( ) ).

    lo_function_import = lo_function->create_function_import( 'CHANGE_STATUS' ).
    lo_function_import->set_edm_name( 'ChangeStatus' ) ##NO_TEXT.
    lo_function_import->/iwbep/if_v4_pm_func_imp_v2~set_http_method( 'POST' ).


    lo_parameter = lo_function->create_parameter( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_parameter->set_edm_name( 'DocumentInfoRecordDocType' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'DOCUMENT_INFO_RECORD_DOC_T' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_parameter->set_edm_name( 'DocumentInfoRecordDocVersion' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'DOCUMENT_INFO_RECORD_DOC_V' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_parameter->set_edm_name( 'DocumentInfoRecordDocNumber' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'DOCUMENT_INFO_RECORD_DOC_N' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_parameter->set_edm_name( 'DocumentInfoRecordDocPart' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'DOCUMENT_INFO_RECORD_DOC_P' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'EXTERNAL_DOCUMENT_STATUS' ).
    lo_parameter->set_edm_name( 'ExternalDocumentStatus' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'EXTERNAL_DOCUMENT_STATUS' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'INTERNAL_DOCUMENT_STATUS' ).
    lo_parameter->set_edm_name( 'InternalDocumentStatus' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'INTERNAL_DOCUMENT_STATUS' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'A_DOCUMENT_INFO_RECORD_TYP' ).

  ENDMETHOD.
ENDCLASS.
