using ComputerService as service from '../../srv/admin-service';

annotate service.Computer with @(
    odata.draft.enabled: true,
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'PurchaseID',
        },
        {
            $Type : 'UI.DataField',
            Value : case.name,
            Label : 'Case',
        },
        {
            $Type : 'UI.DataField',
            Value : cpu.name,
            Label : 'CPU',
        },
        {
            $Type : 'UI.DataField',
            Value : gpu.chipset,
            Label : 'GPU',
        },
        {
            $Type : 'UI.DataField',
            Value : memory.name,
            Label : 'RAM',
        },
        {
            $Type : 'UI.DataField',
            Value : persons.Name,
            Label : 'Customer',
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : 'Price',
        },
    ]
);
annotate service.Computer with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Case',
            ID : 'Case',
            Target : 'case/@UI.LineItem#Case',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'CPU',
            ID : 'CPU',
            Target : 'cpu/@UI.LineItem#CPU',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'CPU Cooler',
            ID : 'CPUCooler',
            Target : 'cpucooler/@UI.LineItem#CPUCooler',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Motherboard',
            ID : 'Motherboard',
            Target : 'motherboard/@UI.LineItem#Motherboard',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'RAM',
            ID : 'RAM',
            Target : 'memory/@UI.LineItem#RAM',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Internal Memory',
            ID : 'InternalMemory',
            Target : 'internalmemory/@UI.LineItem#InternalMemory',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'GPU',
            ID : 'GPU',
            Target : 'gpu/@UI.LineItem#GPU',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Power Supply',
            ID : 'PowerSupply',
            Target : 'powersupply/@UI.LineItem#PowerSupply',
        },
    ]
);
annotate service.Case with @(
    UI.LineItem #Case : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },
        {
            $Type : 'UI.DataField',
            Value : color,
            Label : 'color',
        },
        {
            $Type : 'UI.DataField',
            Value : type,
            Label : 'type',
        },
        {
            $Type : 'UI.DataField',
            Value : side_panel,
            Label : 'side_panel',
        },
        {
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
        },
    ]
);

annotate service.Case with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Case',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'color',
                    LocalDataProperty : color,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'type',
                    LocalDataProperty : type,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'side_panel',
                    LocalDataProperty : side_panel,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'price',
                    LocalDataProperty : price,
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Cpu with @(
    UI.LineItem #CPU : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },{
            $Type : 'UI.DataField',
            Value : graphics,
            Label : 'graphics',
        },{
            $Type : 'UI.DataField',
            Value : core_count,
            Label : 'core_count',
        },{
            $Type : 'UI.DataField',
            Value : core_clock,
            Label : 'core_clock',
        },{
            $Type : 'UI.DataField',
            Value : boost_clock,
            Label : 'boost_clock',
        },{
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
        },]
);
annotate service.Cpucooler with @(
    UI.LineItem #CPUCooler : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },{
            $Type : 'UI.DataField',
            Value : size,
            Label : 'size',
        },{
            $Type : 'UI.DataField',
            Value : rpm,
            Label : 'rpm',
        },{
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
        },]
);
annotate service.Motherboard with @(
    UI.LineItem #Motherboard : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },{
            $Type : 'UI.DataField',
            Value : color,
            Label : 'color',
        },{
            $Type : 'UI.DataField',
            Value : socket,
            Label : 'socket',
        },{
            $Type : 'UI.DataField',
            Value : form_factor,
            Label : 'form_factor',
        },{
            $Type : 'UI.DataField',
            Value : memory_slots,
            Label : 'memory_slots',
        },{
            $Type : 'UI.DataField',
            Value : max_memory,
            Label : 'max_memory',
        },{
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
        },]
);
annotate service.Memory with @(
    UI.LineItem #RAM : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },{
            $Type : 'UI.DataField',
            Value : color,
            Label : 'color',
        },{
            $Type : 'UI.DataField',
            Value : modules,
            Label : 'modules',
        },{
            $Type : 'UI.DataField',
            Value : speed,
            Label : 'speed',
        },{
            $Type : 'UI.DataField',
            Value : cas_latency,
            Label : 'cas_latency',
        },{
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
        },]
);
annotate service.Internalmemory with @(
    UI.LineItem #InternalMemory : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },{
            $Type : 'UI.DataField',
            Value : capacity,
            Label : 'capacity',
        },{
            $Type : 'UI.DataField',
            Value : form_factor,
            Label : 'form_factor',
        },{
            $Type : 'UI.DataField',
            Value : type,
            Label : 'type',
        },{
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
        },]
);
annotate service.Gpu with @(
    UI.LineItem #GPU : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },{
            $Type : 'UI.DataField',
            Value : chipset,
            Label : 'chipset',
        },{
            $Type : 'UI.DataField',
            Value : color,
            Label : 'color',
        },{
            $Type : 'UI.DataField',
            Value : memory,
            Label : 'memory',
        },{
            $Type : 'UI.DataField',
            Value : core_clock,
            Label : 'core_clock',
        },{
            $Type : 'UI.DataField',
            Value : boost_clock,
            Label : 'boost_clock',
        },{
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
        },]
);
annotate service.Powersupply with @(
    UI.LineItem #PowerSupply : [
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'name',
        },{
            $Type : 'UI.DataField',
            Value : wattage,
            Label : 'wattage',
        },{
            $Type : 'UI.DataField',
            Value : modular,
            Label : 'modular',
        },{
            $Type : 'UI.DataField',
            Value : type,
            Label : 'type',
        },{
            $Type : 'UI.DataField',
            Value : efficiency,
            Label : 'efficiency',
        },{
            $Type : 'UI.DataField',
            Value : color,
            Label : 'color',
        },{
            $Type : 'UI.DataField',
            Value : price,
            Label : 'price',
        },]
);
annotate service.Persons with @(
    UI.LineItem #Customer : [
        {
            $Type : 'UI.DataField',
            Value : Name,
            Label : 'Name',
        },]
);
annotate service.Persons with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : Name,
    }
);
annotate service.Cpu with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Cpu',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'graphics',
                    LocalDataProperty : graphics,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'core_count',
                    LocalDataProperty : core_count,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'core_clock',
                    LocalDataProperty : core_clock,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'boost_clock',
                    LocalDataProperty : boost_clock,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'price',
                    LocalDataProperty : price,
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Cpucooler with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Cpucooler',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'size',
                    LocalDataProperty : size,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'rpm',
                    LocalDataProperty : rpm,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'price',
                    LocalDataProperty : price,
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Motherboard with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Motherboard',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'color',
                    LocalDataProperty : color,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'socket',
                    LocalDataProperty : socket,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'form_factor',
                    LocalDataProperty : form_factor,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'memory_slots',
                    LocalDataProperty : memory_slots,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'max_memory',
                    LocalDataProperty : max_memory,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'price',
                    LocalDataProperty : price,
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Memory with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Memory',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'color',
                    LocalDataProperty : color,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'modules',
                    LocalDataProperty : modules,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'speed',
                    LocalDataProperty : speed,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'cas_latency',
                    LocalDataProperty : cas_latency,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'price',
                    LocalDataProperty : price,
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Internalmemory with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Internalmemory',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'capacity',
                    LocalDataProperty : capacity,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'form_factor',
                    LocalDataProperty : form_factor,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'type',
                    LocalDataProperty : type,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'price',
                    LocalDataProperty : price,
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Gpu with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Gpu',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'chipset',
                    LocalDataProperty : chipset,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'color',
                    LocalDataProperty : color,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'memory',
                    LocalDataProperty : memory,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'core_clock',
                    LocalDataProperty : core_clock,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'boost_clock',
                    LocalDataProperty : boost_clock,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'price',
                    LocalDataProperty : price,
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};
annotate service.Powersupply with {
    name @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Powersupply',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : name,
                    ValueListProperty : 'name',
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'wattage',
                    LocalDataProperty : wattage,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'modular',
                    LocalDataProperty : modular,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'type',
                    LocalDataProperty : type,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'efficiency',
                    LocalDataProperty : efficiency,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'color',
                    LocalDataProperty : color,
                },
                {
                    $Type : 'Common.ValueListParameterInOut',
                    ValueListProperty : 'price',
                    LocalDataProperty : price,
                },
            ],
        },
        Common.ValueListWithFixedValues : false
)};



