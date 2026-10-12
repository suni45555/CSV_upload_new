namespace staging;

entity ZPTM_KBAN_MATCFG {
    key MATNR          : String(40);   // Material Number
    key WERKS          : String(4);    // Plant
    ACTIVE             : String(1);    // Active
    MAX_CONTAINERS     : Integer;      // Maximum Containers
    THRESHOLD          : Integer;      // Threshold Multiplier
    CREATED_BY         : String(12);   // Created By
    CREATED_ON         : Date;         // Created On
    CHANGED_BY         : String(12);   // Changed By
    CHANGED_ON         : Date;         // Changed On
}

entity AUTOMATED_KANBAN_REPLENISHMENT {
    key MATERIAL_NUMBER          : String(40);
    key MATERIAL_DOCUMENT_NUMBER : String(40);
    QUANTITY_IN_ENTRY_UNIT       : Decimal(18,3);
    REQUESTED_QUANTITY           : Decimal(18,3);
    KANBAN_CONTROL_CYCLE         : String(20);
    AVAILABLE_STORAGE_BIN        : String(40);
}
