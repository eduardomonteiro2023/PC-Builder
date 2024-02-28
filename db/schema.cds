using {cuid} from '@sap/cds/common';
using {metadata as external} from '../srv/external/metadata';


namespace pcbuild;

entity Computer : cuid {
    ![case]        : Association to ![Case];
    cpucooler      : Association to Cpucooler;
    cpu            : Association to Cpu;
    memory         : Association to Memory;
    motherboard    : Association to Motherboard;
    powersupply    : Association to Powersupply;
    gpu            : Association to Gpu;
    internalmemory : Association to Internalmemory;
    persons        : Association to Persons;

}

entity ![Case] : cuid {

    name             : String;
    price            : Integer;
    type             : String;
    color            : String;
    psu              : Integer;
    side_panel       : String;
    external_volume  : Integer;
    internal_35_bays : Integer;

}

entity Cpucooler : cuid {

    name        : String;
    price       : Integer;
    rpm         : Integer;
    noise_level : Integer;
    color       : Integer;
    size        : Integer;

}

entity Cpu : cuid {

    name        : String;
    price       : Integer;
    core_count  : Integer;
    core_clock  : Integer;
    boost_clock : Integer;
    tdp         : Integer;
    graphics    : String;
    smt         : Boolean;

}

entity Memory : cuid {

    name               : String;
    price              : Integer;
    speed              : Integer;
    modules            : Integer;
    price_per_gb       : Integer;
    color              : String;
    first_word_latency : Integer;
    cas_latency        : String;

}

entity Motherboard : cuid {

    name         : String;
    price        : Integer;
    socket       : String;
    form_factor  : String;
    max_memory   : Integer;
    memory_slots : Integer;
    color        : String;

}

entity Powersupply : cuid {

    name       : String;
    price      : Integer;
    type       : String;
    efficiency : String;
    wattage    : Integer;
    modular    : String;
    color      : String;

}

entity Gpu : cuid {

    name        : String;
    price       : Integer;
    chipset     : String;
    memory      : Integer;
    core_clock  : Integer;
    boost_clock : Integer;
    color       : String;
    length      : Integer;

}

entity Internalmemory : cuid {

    name         : String;
    price        : Integer;
    capacity     : Integer;
    price_per_gb : Integer;
    type         : String;
    cache        : String;
    form_factor  : String;
    interface    : String;

}

entity Persons as projection on external.Persons;