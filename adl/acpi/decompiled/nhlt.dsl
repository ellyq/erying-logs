/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of nhlt.dat, Sat Nov 25 20:24:48 2023
 *
 * ACPI Data Table [NHLT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "NHLT"    [Non HD Audio Link Table]
[004h 0004   4]                 Table Length : 0000002D
[008h 0008   1]                     Revision : 00
[009h 0009   1]                     Checksum : 41
[00Ah 0010   6]                       Oem ID : "ALASKA"
[010h 0016   8]                 Oem Table ID : "A M I "
[018h 0024   4]                 Oem Revision : 01072009
[01Ch 0028   4]              Asl Compiler ID : "AMI "
[020h 0032   4]        Asl Compiler Revision : 01000013

    /* Main table */
[024h 0036   1]               Endpoint Count : 00

/* Terminating specific config (not part of NHLT spec) */
[025h 0037   4]            Capabilities Size : 00000004
[029h 0041   4]                 Capabilities : DE AD BE EF                                     /* .... */\

Raw Table Data: Length 45 (0x2D)

    0000: 4E 48 4C 54 2D 00 00 00 00 41 41 4C 41 53 4B 41  // NHLT-....AALASKA
    0010: 41 20 4D 20 49 20 00 00 09 20 07 01 41 4D 49 20  // A M I ... ..AMI 
    0020: 13 00 00 01 00 04 00 00 00 DE AD BE EF           // .............
