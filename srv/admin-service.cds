using {pcbuild as my} from '../db/schema';
using {metadata as external} from './external/metadata.csn';

service ComputerService {
    entity Computer @odata.draft.enabled as projection on my.Computer;
    entity ![Case]                       as projection on my.Case;
    entity Cpucooler                     as projection on my.Cpucooler;
    entity Cpu                           as projection on my.Cpu;
    entity Memory                        as projection on my.Memory;
    entity Motherboard                   as projection on my.Motherboard;
    entity Powersupply                   as projection on my.Powersupply;
    entity Gpu                           as projection on my.Gpu;
    entity Internalmemory                as projection on my.Internalmemory;

    @readonly
    entity Persons                       as projection on external.Persons;
}
