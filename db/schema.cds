using {cuid} from '@sap/cds/common';
using {metadata as external} from '../srv/external/metadata';


namespace pcbuild;

entity Computer : cuid {
    ![case]        : Composition of one ![Case] on ![case].computer=$self;
    cpucooler      : Composition of one Cpucooler on cpucooler.computer=$self;
    cpu            : Composition of one Cpu on cpu.computer=$self;
    memory         : Composition of many Memory on memory.computer=$self;
    motherboard    : Composition of one Motherboard on motherboard.computer=$self;
    powersupply    : Composition of one Powersupply on powersupply.computer=$self;
    gpu            : Composition of many Gpu on gpu.computer=$self;
    internalmemory : Composition of many Internalmemory on internalmemory.computer=$self;
    persons        : Association to one external.Persons;
    price          : Double;

}

entity ![Case] : cuid {

    name             : String;
    price            : Double;
    type             : String;
    color            : String;
    psu              : Integer;
    side_panel       : String;
    external_volume  : Integer;
    internal_35_bays : Integer;
    computer         : Association to Computer;

}

entity Cpucooler : cuid {

    name        : String;
    price       : Double;
    rpm         : Integer;
    noise_level : Integer;
    color       : Integer;
    size        : Integer;
    computer    : Association to Computer;

}

entity Cpu : cuid {

    name        : String;
    price       : Double;
    core_count  : Integer;
    core_clock  : Integer;
    boost_clock : Integer;
    tdp         : Integer;
    graphics    : String;
    smt         : Boolean;
    computer    : Association to Computer;

}

entity Memory : cuid {

    name               : String;
    price              : Double;
    speed              : String;
    modules            : String;
    price_per_gb       : Integer;
    color              : String;
    first_word_latency : Integer;
    cas_latency        : String;
    computer           : Association to Computer;

}

entity Motherboard : cuid {

    name         : String;
    price        : Double;
    socket       : String;
    form_factor  : String;
    max_memory   : Integer;
    memory_slots : Integer;
    color        : String;
    computer     : Association to Computer;

}

entity Powersupply : cuid {

    name       : String;
    price      : Double;
    type       : String;
    efficiency : String;
    wattage    : Integer;
    modular    : String;
    color      : String;
    computer   : Association to Computer;

}

entity Gpu : cuid {

    name        : String;
    price       : Double;
    chipset     : String;
    memory      : Integer;
    core_clock  : Integer;
    boost_clock : Integer;
    color       : String;
    length      : Integer;
    computer    : Association to Computer;

}

entity Internalmemory : cuid {

    name         : String;
    price        : Double;
    capacity     : Integer;
    price_per_gb : Integer;
    type         : String;
    cache        : String;
    form_factor  : String;
    interface    : String;
    computer     : Association to Computer;

}



