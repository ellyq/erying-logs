/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat, Sat Nov 25 17:19:06 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003E0 (992)
 *     Revision         0x02
 *     Checksum         0x70
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Tst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Tst", 0x00003000)
{
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.CTPC, IntObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PR00, DeviceObj)
    External (_SB_.PR00._PSS, PkgObj)
    External (_SB_.PR00.LPSS, PkgObj)
    External (_SB_.PR00.TPSS, PkgObj)
    External (PF00, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_SB.PR00)
    {
        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            Return (\_SB.CTPC) /* External reference */
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If ((\PF00 & 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x05,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000001810, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x05,               // Bit Width
                        0x00,               // Bit Offset
                        0x0000000000001810, // Address
                        ,)
                }
            })
        }

        Name (TSMF, Package (0x10)
        {
            Package (0x05)
            {
                0x64, 
                0x03E8, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x05)
            {
                0x5E, 
                0x03AC, 
                Zero, 
                0x1F, 
                Zero
            }, 

            Package (0x05)
            {
                0x58, 
                0x0370, 
                Zero, 
                0x1E, 
                Zero
            }, 

            Package (0x05)
            {
                0x52, 
                0x0334, 
                Zero, 
                0x1D, 
                Zero
            }, 

            Package (0x05)
            {
                0x4B, 
                0x02F8, 
                Zero, 
                0x1C, 
                Zero
            }, 

            Package (0x05)
            {
                0x45, 
                0x02BC, 
                Zero, 
                0x1B, 
                Zero
            }, 

            Package (0x05)
            {
                0x3F, 
                0x0280, 
                Zero, 
                0x1A, 
                Zero
            }, 

            Package (0x05)
            {
                0x39, 
                0x0244, 
                Zero, 
                0x19, 
                Zero
            }, 

            Package (0x05)
            {
                0x32, 
                0x0208, 
                Zero, 
                0x18, 
                Zero
            }, 

            Package (0x05)
            {
                0x2C, 
                0x01CC, 
                Zero, 
                0x17, 
                Zero
            }, 

            Package (0x05)
            {
                0x26, 
                0x0190, 
                Zero, 
                0x16, 
                Zero
            }, 

            Package (0x05)
            {
                0x20, 
                0x0154, 
                Zero, 
                0x15, 
                Zero
            }, 

            Package (0x05)
            {
                0x19, 
                0x0118, 
                Zero, 
                0x14, 
                Zero
            }, 

            Package (0x05)
            {
                0x13, 
                0xDC, 
                Zero, 
                0x13, 
                Zero
            }, 

            Package (0x05)
            {
                0x0D, 
                0xA0, 
                Zero, 
                0x12, 
                Zero
            }, 

            Package (0x05)
            {
                0x07, 
                0x64, 
                Zero, 
                0x11, 
                Zero
            }
        })
        Name (TSMC, Package (0x08)
        {
            Package (0x05)
            {
                0x64, 
                0x03E8, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x05)
            {
                0x58, 
                0x036B, 
                Zero, 
                0x1E, 
                Zero
            }, 

            Package (0x05)
            {
                0x4B, 
                0x02EE, 
                Zero, 
                0x1C, 
                Zero
            }, 

            Package (0x05)
            {
                0x3F, 
                0x0271, 
                Zero, 
                0x1A, 
                Zero
            }, 

            Package (0x05)
            {
                0x32, 
                0x01F4, 
                Zero, 
                0x18, 
                Zero
            }, 

            Package (0x05)
            {
                0x26, 
                0x0177, 
                Zero, 
                0x16, 
                Zero
            }, 

            Package (0x05)
            {
                0x19, 
                0xFA, 
                Zero, 
                0x14, 
                Zero
            }, 

            Package (0x05)
            {
                0x0D, 
                0x7D, 
                Zero, 
                0x12, 
                Zero
            }
        })
        Name (TSSF, Zero)
        Mutex (TSMO, 0x00)
        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If ((!TSSF && CondRefOf (\_SB.PR00._PSS)))
            {
                Acquire (TSMO, 0xFFFF)
                If ((!TSSF && CondRefOf (\_SB.PR00._PSS)))
                {
                    If ((\_SB.OSCP & 0x0400))
                    {
                        Local3 = SizeOf (\_SB.PR00.TPSS)
                        Local3--
                        Local5 = DerefOf (DerefOf (\_SB.PR00.TPSS [Local3]) [One])
                    }
                    Else
                    {
                        Local3 = SizeOf (\_SB.PR00.LPSS)
                        Local3--
                        Local5 = DerefOf (DerefOf (\_SB.PR00.LPSS [Local3]) [One])
                    }

                    If ((CFGD & 0x2000))
                    {
                        Local1 = RefOf (TSMF)
                        Local2 = SizeOf (TSMF)
                    }
                    Else
                    {
                        Local1 = RefOf (TSMC)
                        Local2 = SizeOf (TSMC)
                    }

                    Local0 = Zero
                    While ((Local0 < Local2))
                    {
                        Local4 = ((Local5 * (Local2 - Local0)) / Local2)
                        DerefOf (DerefOf (Local1) [Local0]) [One] = Local4
                        Local0++
                    }

                    TSSF = Ones
                }

                Release (TSMO)
            }

            If ((CFGD & 0x2000))
            {
                Return (TSMF) /* \_SB_.PR00.TSMF */
            }
            Else
            {
                Return (TSMC) /* \_SB_.PR00.TSMC */
            }
        }

        Method (GTSD, 1, NotSerialized)
        {
            If (!(\PF00 & 0x04))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        TCNT
                    }
                })
            }

            Name (STSD, Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    Zero, 
                    0xFC, 
                    One
                }
            })
            DerefOf (STSD [Zero]) [0x02] = Arg0
            Return (STSD) /* \_SB_.PR00.GTSD.STSD */
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            Return (GTSD (Zero))
        }
    }
}

