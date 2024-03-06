using ComputerService as service from '../../srv/admin-service';

annotate service.Computer with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'persons_ID',
            Value : persons_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'price',
            Value : price,
        },
    ]
);
annotate service.Computer with {
    persons @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Persons',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : persons_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Name',
            },
        ],
    }
};
annotate service.Computer with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'persons_ID',
                Value : persons_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
