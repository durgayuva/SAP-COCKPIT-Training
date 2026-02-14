using prService as service from '../../srv/pr_approval_one';
annotate service.prtableSet with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : prno,
            },
            {
                $Type : 'UI.DataField',
                Value : item_no,
            },
            {
                $Type : 'UI.DataField',
                Value : prvalue,
            },
            {
                $Type : 'UI.DataField',
                Value : doc_type,
            },
            {
                $Type : 'UI.DataField',
                Value : requestor,
            },
            {
                $Type : 'UI.DataField',
                Value : material,
            },
            {
                $Type : 'UI.DataField',
                Value : qty,
            },
            {
                $Type : 'UI.DataField',
                Value : plant,
            },
            {
                $Type : 'UI.DataField',
                Value : pur_org,
            },
            {
                $Type : 'UI.DataField',
                Value : rel_sgr,
            },
            {
                $Type : 'UI.DataField',
                Value : rel_state,
            },
            {
                $Type : 'UI.DataField',
                Value : rel_ind,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : item_no,
        },
        {
            $Type : 'UI.DataField',
            Value : prno,
        },
        {
            $Type : 'UI.DataField',
            Value : prvalue,
        },
        {
            $Type : 'UI.DataField',
            Value : doc_type,
        },
        {
            $Type : 'UI.DataField',
            Value : requestor,
        },
        {
            $Type : 'UI.DataField',
            Value : material,
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : plant,
        },
        {
            $Type : 'UI.DataField',
            Value : pur_org,
        },
        {
            $Type : 'UI.DataField',
            Value : qty,
        },
        {
            $Type : 'UI.DataField',
            Value : rel_ind,
        },
    ],
);

