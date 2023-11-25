/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20220331 (64-bit version)
 * Copyright (c) 2000 - 2022 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt7.dat, Sat Nov 25 17:19:06 2023
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000D58 (3416)
 *     Revision         0x02
 *     Checksum         0xBC
 *     OEM ID           "INTEL"
 *     OEM Table ID     "xh_thdd4"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20191018 (538513432)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL", "xh_thdd4", 0x00000000)
{
    External (_SB_.BTRK, MethodObj)    // 1 Arguments
    External (_SB_.PC00.CNIP, MethodObj)    // 0 Arguments
    External (_SB_.PC00.RP08.PXSX.WIST, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TXHC.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.TXHC.RHUB.SS02, DeviceObj)
    External (_SB_.PC00.TXHC.RHUB.SS03, DeviceObj)
    External (_SB_.PC00.TXHC.RHUB.SS04, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS03, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS04, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS05, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS06, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS07, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS08, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS09, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS10, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS11, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS12, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS13, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS14, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.HS14.RDLY, UnknownObj)
    External (_SB_.PC00.XHCI.RHUB.SS01, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS02, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS03, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS04, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS05, DeviceObj)
    External (_SB_.PC00.XHCI.RHUB.SS06, DeviceObj)
    External (_SB_.UBTC.RUCC, MethodObj)    // 2 Arguments
    External (ATDV, UnknownObj)
    External (BED2, UnknownObj)
    External (BED3, UnknownObj)
    External (BTBR, UnknownObj)
    External (BTL2, UnknownObj)
    External (BTLE, UnknownObj)
    External (BTLL, UnknownObj)
    External (BTSE, UnknownObj)
    External (CECV, UnknownObj)
    External (CNMT, UnknownObj)
    External (SXI1, IntObj)
    External (SXI2, IntObj)
    External (SXP1, IntObj)
    External (SXP2, IntObj)

    Method (GPLD, 2, Serialized)
    {
        Name (PCKG, Package (0x01)
        {
            Buffer (0x10) {}
        })
        CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
        REV = 0x02
        CreateField (DerefOf (PCKG [Zero]), 0x07, One, RGB)
        RGB = One
        CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
        VISI = Arg0
        CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
        GPOS = Arg1
        Return (PCKG) /* \GPLD.PCKG */
    }

    Method (GUPC, 2, Serialized)
    {
        Name (PCKG, Package (0x04)
        {
            0xFF, 
            0xFF, 
            Zero, 
            Zero
        })
        PCKG [Zero] = Arg0
        PCKG [One] = Arg1
        Return (PCKG) /* \GUPC.PCKG */
    }

    Scope (\_SB.PC00.TXHC.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (One, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (One, 0x02))
        }
    }

    Scope (\_SB.PC00.TXHC.RHUB.SS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x02, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x02, 0x02))
        }
    }

    Scope (\_SB.PC00.TXHC.RHUB.SS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x03, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x03, 0x02))
        }
    }

    Scope (\_SB.PC00.TXHC.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x04, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x04, 0x02))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, One))
        }

        If ((CondRefOf (SXI1) && CondRefOf (SXP1)))
        {
            If (((SXI1 > Zero) && (SXP1 == One)))
            {
                Device (CIR)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((One + SXI1))
                    }
                }
            }
        }

        If ((CondRefOf (SXI2) && CondRefOf (SXP2)))
        {
            If (((SXI2 > Zero) && (SXP2 == One)))
            {
                Device (CIR2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((One + SXI2))
                    }
                }
            }
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x03))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x04))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x05))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x06))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS07)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (One, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (One, 0x02))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS08)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x02, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x02, 0x02))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS09)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x03, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x03, 0x02))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS10)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (\_SB.UBTC.RUCC (0x04, One))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (\_SB.UBTC.RUCC (0x04, 0x02))
        }

        If ((CondRefOf (SXI1) && CondRefOf (SXP1)))
        {
            If (((SXI1 > Zero) && (SXP1 == 0x0A)))
            {
                Device (CIR)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((0x0A + SXI1))
                    }
                }
            }
        }

        If ((CondRefOf (SXI2) && CondRefOf (SXP2)))
        {
            If (((SXI2 > Zero) && (SXP2 == 0x0A)))
            {
                Device (CIR2)
                {
                    Method (_ADR, 0, NotSerialized)  // _ADR: Address
                    {
                        Return ((0x0A + SXI2))
                    }
                }
            }
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS11)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS12)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, One))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS13)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x02))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.HS14)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            If (((\_SB.PC00.CNIP () == One) || (\_SB.PC00.RP08.PXSX.WIST () == One)))
            {
                Return (GUPC (Zero, 0xFF))
            }
            Else
            {
                Return (GUPC (One, Zero))
            }
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            If (((\_SB.PC00.CNIP () == One) || (\_SB.PC00.RP08.PXSX.WIST () == One)))
            {
                Return (GPLD (Zero, 0x0E))
            }
            Else
            {
                Return (GPLD (One, 0x0E))
            }
        }

        If (\_SB.PC00.RP08.PXSX.WIST ())
        {
            Name (SADX, Package (0x03)
            {
                Zero, 
                Package (0x02)
                {
                    0x07, 
                    0x80000000
                }, 

                Package (0x02)
                {
                    0x12, 
                    0x80000000
                }
            })
            Method (SADS, 0, Serialized)
            {
                DerefOf (SADX [One]) [One] = \ATDV /* External reference */
                DerefOf (SADX [0x02]) [One] = \ATDV /* External reference */
                Return (SADX) /* \_SB_.PC00.XHCI.RHUB.HS14.SADX */
            }

            Name (RDLY, 0x69)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("aa10f4e0-81ac-4233-abf6-3b2ac50e28d9") /* Unknown UUID */))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        RDLY = Arg3
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            PowerResource (BTRT, 0x05, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (One)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }

                Method (_RST, 0, NotSerialized)  // _RST: Device Reset
                {
                    Local0 = Acquire (\CNMT, 0x03E8)
                    If ((Local0 == Zero))
                    {
                        \_SB.BTRK (Zero)
                        Sleep (RDLY)
                        \_SB.BTRK (One)
                        Sleep (RDLY)
                    }

                    Release (\CNMT)
                }
            }

            Method (_PRR, 0, NotSerialized)  // _PRR: Power Resource for Reset
            {
                Return (Package (0x01)
                {
                    BTRT
                })
            }

            Name (BRDY, Package (0x02)
            {
                Zero, 
                Package (0x08)
                {
                    0x12, 
                    0x80, 
                    0x80, 
                    0x80, 
                    0x80, 
                    0x80, 
                    0x80, 
                    0x80
                }
            })
            Method (BRDS, 0, Serialized)
            {
                DerefOf (BRDY [One]) [One] = \BTSE /* External reference */
                DerefOf (BRDY [One]) [0x02] = \BTBR /* External reference */
                DerefOf (BRDY [One]) [0x03] = \BED2 /* External reference */
                DerefOf (BRDY [One]) [0x04] = \BED3 /* External reference */
                DerefOf (BRDY [One]) [0x05] = \BTLE /* External reference */
                DerefOf (BRDY [One]) [0x06] = \BTL2 /* External reference */
                DerefOf (BRDY [One]) [0x07] = \BTLL /* External reference */
                Return (BRDY) /* \_SB_.PC00.XHCI.RHUB.HS14.BRDY */
            }

            Name (ECKY, Package (0x02)
            {
                Zero, 
                Package (0x02)
                {
                    0x12, 
                    Zero
                }
            })
            Method (ECKV, 0, Serialized)
            {
                DerefOf (ECKY [One]) [One] = \CECV /* External reference */
                Return (ECKY) /* \_SB_.PC00.XHCI.RHUB.HS14.ECKY */
            }

            Name (GPCX, Package (0x03)
            {
                Zero, 
                Package (0x02)
                {
                    0x07, 
                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Zero
                    }
                }, 

                Package (0x02)
                {
                    0x12, 
                    Package (0x03)
                    {
                        Zero, 
                        Zero, 
                        Zero
                    }
                }
            })
            Method (GPC, 0, Serialized)
            {
                Return (GPCX) /* \_SB_.PC00.XHCI.RHUB.HS14.GPCX */
            }
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS01)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, One))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS02)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x07))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS03)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x03))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS04)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x05))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS05)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (One, Zero))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (One, 0x06))
        }
    }

    Scope (\_SB.PC00.XHCI.RHUB.SS06)
    {
        Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
        {
            Return (GUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
        {
            Return (GPLD (Zero, Zero))
        }
    }
}

