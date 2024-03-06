using ComputerService as service from '../../srv/admin-service';

annotate service.Computer with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : '{i18n>ComputerId}',
        },
        {
            $Type : 'UI.DataField',
            Value : case.name,
            Label : '{i18n>Case}',
        },
        {
            $Type : 'UI.DataField',
            Value : cpu.name,
            Label : '{i18n>Cpu}',
        },
        {
            $Type : 'UI.DataField',
            Value : gpu.chipset,
            Label : '{i18n>Gpu}',
        },
        {
            $Type : 'UI.DataField',
            Value : memory.name,
            Label : '{i18n>Ram}',
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : '{i18n>Price}',
        },
        {
            $Type : 'UI.DataField',
            Value : persons.Name,
            Label : '{i18n>Customer}',
        },
    ]
);

