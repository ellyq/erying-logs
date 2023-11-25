/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of mcfg.dat, Sat Nov 25 17:19:06 2023
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration Table]
[004h 0004   4]                 Table Length : 0000003C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 21
[00Ah 0010   6]                       Oem ID : "      "
[010h 0016   8]                 Oem Table ID : ""
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : ""
[020h 0032   4]        Asl Compiler Revision : 00000000

[024h 0036   8]                     Reserved : 0000000000000000

[02Ch 0044   8]                 Base Address : 00000000C0000000
[034h 0052   2]         Segment Group Number : 0000
[036h 0054   1]             Start Bus Number : 00
[037h 0055   1]               End Bus Number : 04
[038h 0056   4]                     Reserved : 00000000

Raw Table Data: Length 60 (0x3C)

    0000: 4D 43 46 47 3C 00 00 00 01 21 20 20 20 20 20 20  // MCFG<....!      
    0010: 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  // ................
    0020: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 C0  // ................
    0030: 00 00 00 00 00 00 00 04 00 00 00 00              // ............
