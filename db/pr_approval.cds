namespace SAPPRAPPROVAL;
using { cuid,managed} from '@sap/cds/common';

@assert.unique:{prno:[prno]}
entity prtable : cuid,managed {
    prno:Integer @mandatory @title :'{i18n>PRNumber}';
    item_no:String(50) @mandatory @title : '{i18n>ItemNumber}';
    prvalue:Integer @mandatory @title :'{i18n>PRValue}';
    doc_type:String(50) @mandatory @title : '{i18n>DocumentType}';
    requestor:String(50) @mandatory @title : '{i18n>Requestor}';
    material:String(10) @mandatory @title : '{i18n>Material}';
    qty:Integer @mandatory @title : '{i18n>Qty}';
    plant:String(10) @mandatory @title : '{i18n>Plant}';
    pur_org:String(10) @mandatory @title : '{i18n>Purchaseorganization}';
    rel_sgr:String(10) @mandatory @title : '{i18n>ReleaseSGR}';
    rel_state:String(10) @mandatory @title : '{i18n>ReleaseStatergy}';
    rel_ind:String(10) @mandatory @title : '{i18n>ReleaseIndicator}';
}

entity plants{
    plant_name:String(100);
    code:String(20);
}