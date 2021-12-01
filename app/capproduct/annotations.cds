using Product as service from '../../srv/Product';

annotate Product.Products @(UI : {
    HeaderInfo              : {
        TypeName       : 'Produkt',
        TypeNamePlural : 'Produkte',
        Title          : {Value : Serialnumber},
        Description    : {Value : Material}
    },
    SelectionFields         : [
        Material,
        Serialnumber
    ],
    LineItem                : [
        {
            Value : Serialnumber,
            Label : 'Seriennummer'
        },
        {
            Value : Material,
            Label : 'Material'

        },
        {
            Value : Description,
            Label : 'Beschreibung'
        },
        {
            $Type  : 'UI.DataFieldForAction',
            Action : 'Product.EntityContainer/CREATE',
            Label  : 'Anlage'
        },
    ],
    Facets                  : [
        {
            $Type  : 'UI.CollectionFacet',
            Label  : 'Details',
            ID     : 'DetailFacet',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                ID     : 'DetailFacet',
                Target : '@UI.FieldGroup#Details',
            }, ]
        },
        {
            $Type  : 'UI.CollectionFacet',
            Label  : 'MoreDetails',
            ID     : 'MoreDetails',
            Facets : [{
                $Type  : 'UI.ReferenceFacet',
                ID     : 'MoreDetailFacet',
                Target : '@UI.FieldGroup#MoreDetails'
            }, ],
        },

    ],
    FieldGroup #Details     : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : Material,
                Label : 'Material'
            },
            {
                $Type : 'UI.DataField',
                Value : Serialnumber,
                Label : 'Seriennummer'
            }
        ]
    },
    FieldGroup #MoreDetails : {
        $Type : 'UI.FieldGroupType',
        Data  : [

        {
            $Type : 'UI.DataField',
            Value : Description,
            Label : 'Beschreibung'
        }]
    }
});
