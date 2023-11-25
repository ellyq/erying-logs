/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembly of uefi.dat, Sat Nov 25 20:24:48 2023
 *
 * ACPI Data Table [UEFI]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000   4]                    Signature : "UEFI"    [UEFI Boot Optimization Table]
[004h 0004   4]                 Table Length : 00000048
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : E4
[00Ah 0010   6]                       Oem ID : "ALASKA"
[010h 0016   8]                 Oem Table ID : "A M I "
[018h 0024   4]                 Oem Revision : 01072009
[01Ch 0028   4]              Asl Compiler ID : "AMI "
[020h 0032   4]        Asl Compiler Revision : 01000013

[024h 0036  16]              UUID Identifier : BAEDB05D-F2CE-485B-B454-C251870CDEFC
[034h 0052   2]                  Data Offset : 0036

Raw Table Data: Length 72 (0x48)

    0000: 55 45 46 49 48 00 00 00 01 E4 41 4C 41 53 4B 41  // UEFIH.....ALASKA
    0010: 41 20 4D 20 49 20 00 00 09 20 07 01 41 4D 49 20  // A M I ... ..AMI 
    0020: 13 00 00 01 5D B0 ED BA CE F2 5B 48 B4 54 C2 51  // ....].....[H.T.Q
    0030: 87 0C DE FC 36 00 02 00 98 3A BC 34 00 00 00 00  // ....6....:.4....
    0040: D9 00 00 00 18 00 00 00                          // ........
