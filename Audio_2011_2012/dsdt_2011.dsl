// ACPI Error: Argument count mismatch for method \_SB_.PCI0.EHC2.HRST 3 1 (20100331/dmextern-385)
/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100331
 *
 * Disassembly of iASLjAHHtv.aml, Mon Sep 16 23:53:31 2019
 *
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000067F3 (26611)
 *     Revision         0x01 **** ACPI 1.0, no 64-bit math support
 *     Checksum         0xA7
 *     OEM ID           "APPLE "
 *     OEM Table ID     "MacBookP"
 *     OEM Revision     0x00080001 (524289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20100331 (537920305)
 */
DefinitionBlock ("iASLjAHHtv.aml", "DSDT", 1, "APPLE ", "MacBookP", 0x00080001)
{
    External (PDC7)
    External (PDC6)
    External (PDC5)
    External (PDC4)
    External (PDC3)
    External (PDC2)
    External (PDC1)
    External (PDC0)
    External (HNOT, MethodObj)    // 1 Arguments
    External (SNXD)
    External (IDAB)
    External (HDOS, MethodObj)    // 0 Arguments
    External (\_SB_.PCI0.EHC2)
    External (\_SB_.PCI0.EHC1)
    External (\_SB_.PCI0.EHC2.HRST, MethodObj)    // 3 Arguments
    External (\_SB_.PCI0.SATA.PRT1)
    External (\_SB_.PCI0.SATA.PRT2)

    Name (SP2O, 0x4E)
    Name (SP1O, 0x164E)
    Name (IO1B, 0x0600)
    Name (IO1L, 0x70)
    Name (IO2B, 0x0680)
    Name (IO2L, 0x20)
    Name (IO3B, 0x0290)
    Name (IO3L, 0x10)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (MCHB, 0xFED10000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x04000000)
    Name (TTTB, 0xFED20000)
    Name (TTTL, 0x00020000)
    Name (SMBS, 0xEFA0)
    Name (SMBL, 0x10)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, One)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (DSSP, Zero)
    Name (FHPP, One)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (BSH, Zero)
    Name (BEL, One)
    Name (BEH, 0x02)
    Name (BRH, 0x03)
    Name (BTF, 0x04)
    Name (BHC, 0x05)
    Name (BYB, 0x06)
    Name (BPH, 0x07)
    Name (BSHS, 0x08)
    Name (BELS, 0x09)
    Name (BRHS, 0x0A)
    Name (BTFS, 0x0B)
    Name (BEHS, 0x0C)
    Name (BPHS, 0x0D)
    Name (BTL, 0x10)
    Name (BOF, 0x20)
    Name (BEF, 0x21)
    Name (BLLE, 0x22)
    Name (BLLC, 0x23)
    Name (BLCA, 0x24)
    Name (TCGM, One)
    Name (TRTP, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x0C)
    Name (DSLC, 0x0E)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (SOOT, 0x35)
    Name (PDBR, 0x4D)
    Name (WOWE, Zero)
    Name (TAPD, Zero)
    OperationRegion (GNVS, SystemMemory, 0x8AD50E18, 0x0173)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
                Offset (0x25), 
        REVN,   8, 
                Offset (0x28), 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
                Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
                Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
                Offset (0x74), 
        MEFE,   8, 
        DSTS,   8, 
                Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
                Offset (0xAA), 
        ASLB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        ITVF,   8, 
        ITVM,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        I409,   8, 
        I509,   8, 
        I609,   8, 
        I709,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
                Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
        SDGV,   8, 
        SDDV,   8, 
                Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
                Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        EBAS,   32, 
        CPSP,   32, 
        EECP,   32, 
        EVCP,   32, 
        XBAS,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
                Offset (0x157), 
        ATMC,   8, 
        PTMC,   8, 
        ATRA,   8, 
        PTRA,   8, 
        PNHM,   32, 
        TBAB,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        ATPC,   8, 
        PTPC,   8, 
        PFLV,   8, 
        BREV,   8, 
        DPBM,   8, 
        DPCM,   8, 
        DPDM,   8, 
        ALFP,   8, 
        IMON,   8, 
        SDID,   8
    }

    Scope (_SB)
    {
        Name (PR00, Package (0x1C)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x1C)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR08, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR09, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0E, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR0F, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR02, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR0A, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR0B, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR0C, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PR01, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                LNKF, 
                Zero
            }
        })
        Name (AR01, Package (0x0C)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                Zero, 
                0x15
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,7,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))
            Name (_CID, EisaId ("PNP0A03"))
            Name (_ADR, Zero)
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)
            Method (_PRT, 0, NotSerialized)
            {
                If (PICM)
                {
                    Return (AR00 ())
                }

                Return (PR00 ())
            }

            OperationRegion (HBUS, PCI_Config, Zero, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                        Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                        Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                        Offset (0x50), 
                GCLK,   1, 
                        Offset (0x54), 
                D0EN,   1, 
                        Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                        Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                        Offset (0x70), 
                    ,   20, 
                MEBR,   12, 
                        Offset (0x80), 
                    ,   4, 
                PM0H,   2, 
                        Offset (0x81), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                        Offset (0x82), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                        Offset (0x83), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                        Offset (0x84), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                        Offset (0x85), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                        Offset (0x86), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                        Offset (0x87), 
                        Offset (0xA8), 
                    ,   20, 
                TUUD,   19, 
                        Offset (0xBC), 
                    ,   20, 
                TLUD,   12, 
                        Offset (0xC8), 
                    ,   7, 
                HTSE,   1
            }

            OperationRegion (MCHT, SystemMemory, 0xFED10000, 0x1100)
            Field (MCHT, ByteAcc, NoLock, Preserve)
            {
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEAFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED44FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00005000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000C20000000, // Range Minimum
                    0x0000000E0FFFFFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x00000001F0000000, // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)
            {
                If (PM1L)
                {
                    CreateDWordField (BUF0, 0x7C, C0LN)
                    Store (Zero, C0LN)
                }

                If (LEqual (PM1L, One))
                {
                    CreateBitField (BUF0, 0x0358, C0RW)
                    Store (Zero, C0RW)
                }

                If (PM1H)
                {
                    CreateDWordField (BUF0, 0x96, C4LN)
                    Store (Zero, C4LN)
                }

                If (LEqual (PM1H, One))
                {
                    CreateBitField (BUF0, 0x0428, C4RW)
                    Store (Zero, C4RW)
                }

                If (PM2L)
                {
                    CreateDWordField (BUF0, 0xB0, C8LN)
                    Store (Zero, C8LN)
                }

                If (LEqual (PM2L, One))
                {
                    CreateBitField (BUF0, 0x04F8, C8RW)
                    Store (Zero, C8RW)
                }

                If (PM2H)
                {
                    CreateDWordField (BUF0, 0xCA, CCLN)
                    Store (Zero, CCLN)
                }

                If (LEqual (PM2H, One))
                {
                    CreateBitField (BUF0, 0x05C8, CCRW)
                    Store (Zero, CCRW)
                }

                If (PM3L)
                {
                    CreateDWordField (BUF0, 0xE4, D0LN)
                    Store (Zero, D0LN)
                }

                If (LEqual (PM3L, One))
                {
                    CreateBitField (BUF0, 0x0698, D0RW)
                    Store (Zero, D0RW)
                }

                If (PM3H)
                {
                    CreateDWordField (BUF0, 0xFE, D4LN)
                    Store (Zero, D4LN)
                }

                If (LEqual (PM3H, One))
                {
                    CreateBitField (BUF0, 0x0768, D4RW)
                    Store (Zero, D4RW)
                }

                If (PM4L)
                {
                    CreateDWordField (BUF0, 0x0118, D8LN)
                    Store (Zero, D8LN)
                }

                If (LEqual (PM4L, One))
                {
                    CreateBitField (BUF0, 0x0838, D8RW)
                    Store (Zero, D8RW)
                }

                If (PM4H)
                {
                    CreateDWordField (BUF0, 0x0132, DCLN)
                    Store (Zero, DCLN)
                }

                If (LEqual (PM4H, One))
                {
                    CreateBitField (BUF0, 0x0908, DCRW)
                    Store (Zero, DCRW)
                }

                If (PM5L)
                {
                    CreateDWordField (BUF0, 0x014C, E0LN)
                    Store (Zero, E0LN)
                }

                If (LEqual (PM5L, One))
                {
                    CreateBitField (BUF0, 0x09D8, E0RW)
                    Store (Zero, E0RW)
                }

                If (PM5H)
                {
                    CreateDWordField (BUF0, 0x0166, E4LN)
                    Store (Zero, E4LN)
                }

                If (LEqual (PM5H, One))
                {
                    CreateBitField (BUF0, 0x0AA8, E4RW)
                    Store (Zero, E4RW)
                }

                If (PM6L)
                {
                    CreateDWordField (BUF0, 0x0180, E8LN)
                    Store (Zero, E8LN)
                }

                If (LEqual (PM6L, One))
                {
                    CreateBitField (BUF0, 0x0B78, E8RW)
                    Store (Zero, E8RW)
                }

                If (PM6H)
                {
                    CreateDWordField (BUF0, 0x019A, ECLN)
                    Store (Zero, ECLN)
                }

                If (LEqual (PM6H, One))
                {
                    CreateBitField (BUF0, 0x0C48, ECRW)
                    Store (Zero, ECRW)
                }

                If (PM0H)
                {
                    CreateDWordField (BUF0, 0x01B4, F0LN)
                    Store (Zero, F0LN)
                }

                If (LEqual (PM0H, One))
                {
                    CreateBitField (BUF0, 0x0D18, F0RW)
                    Store (Zero, F0RW)
                }

                CreateDWordField (BUF0, 0x01C2, M1MN)
                CreateDWordField (BUF0, 0x01C6, M1MX)
                CreateDWordField (BUF0, 0x01CE, M1LN)
                ShiftLeft (TLUD, 0x14, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                Return (BUF0)
            }

            Name (GUID, Buffer (0x10)
            {
                /* 0000 */    0x5B, 0x4D, 0xDB, 0x33, 0xF7, 0x1F, 0x1C, 0x40, 
                /* 0008 */    0x96, 0x57, 0x74, 0x41, 0xC0, 0x3D, 0xD7, 0x66
            })
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                Store (CDW2, SUPP)
                Store (CDW3, CTRL)
                If (LEqual (One, OSDW ()))
                {
                    If (LAnd (LEqual (Arg0, GUID), NEXP))
                    {
                        If (Not (And (CDW1, One)))
                        {
                            If (And (CTRL, 0x02))
                            {
                                NHPG ()
                            }

                            If (And (CTRL, 0x04))
                            {
                                NPME ()
                            }
                        }

                        If (LNotEqual (Arg1, One))
                        {
                            Or (CDW1, 0x08, CDW1)
                        }

                        If (LNotEqual (CDW3, CTRL))
                        {
                            Or (CDW1, 0x10, CDW1)
                        }

                        Store (CTRL, CDW3)
                        Store (CTRL, OSCC)
                        Return (Local0)
                    }
                    Else
                    {
                        Or (CDW1, 0x04, CDW1)
                        Return (Local0)
                    }
                }
                Else
                {
                    If (LEqual (^PEG1.LDIS, Zero))
                    {
                        And (CDW3, 0xFFFFFFFB, CDW3)
                    }

                    Return (Local0)
                }
            }

            Scope (\_SB.PCI0)
            {
                Method (AR00, 0, NotSerialized)
                {
                    Return (^^AR00)
                }

                Method (PR00, 0, NotSerialized)
                {
                    Return (^^PR00)
                }

                Method (AR01, 0, NotSerialized)
                {
                    Return (^^AR01)
                }

                Method (PR01, 0, NotSerialized)
                {
                    Return (^^PR01)
                }

                Method (AR02, 0, NotSerialized)
                {
                    Return (^^AR02)
                }

                Method (PR02, 0, NotSerialized)
                {
                    Return (^^PR02)
                }

                Method (AR04, 0, NotSerialized)
                {
                    Return (^^AR04)
                }

                Method (PR04, 0, NotSerialized)
                {
                    Return (^^PR04)
                }

                Method (AR05, 0, NotSerialized)
                {
                    Return (^^AR05)
                }

                Method (PR05, 0, NotSerialized)
                {
                    Return (^^PR05)
                }

                Method (AR06, 0, NotSerialized)
                {
                    Return (^^AR06)
                }

                Method (PR06, 0, NotSerialized)
                {
                    Return (^^PR06)
                }

                Method (AR07, 0, NotSerialized)
                {
                    Return (^^AR07)
                }

                Method (PR07, 0, NotSerialized)
                {
                    Return (^^PR07)
                }

                Method (AR08, 0, NotSerialized)
                {
                    Return (^^AR08)
                }

                Method (PR08, 0, NotSerialized)
                {
                    Return (^^PR08)
                }

                Method (AR09, 0, NotSerialized)
                {
                    Return (^^AR09)
                }

                Method (PR09, 0, NotSerialized)
                {
                    Return (^^PR09)
                }

                Method (AR0A, 0, NotSerialized)
                {
                    Return (^^AR0A)
                }

                Method (PR0A, 0, NotSerialized)
                {
                    Return (^^PR0A)
                }

                Method (AR0B, 0, NotSerialized)
                {
                    Return (^^AR0B)
                }

                Method (PR0B, 0, NotSerialized)
                {
                    Return (^^PR0B)
                }
            }

            Device (MCHC)
            {
                Name (_ADR, Zero)
            }

            Device (P0P2)
            {
                Name (_ADR, 0x00010000)
                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR02 ())
                    }

                    Return (PR02 ())
                }

                Device (GFX0)
                {
                    Name (_ADR, Zero)
                    Name (BRTN, Package (0x12)
                    {
                        0x50, 
                        0x2F, 
                        Zero, 
                        0x07, 
                        0x0D, 
                        0x14, 
                        0x1B, 
                        0x21, 
                        0x28, 
                        0x2F, 
                        0x35, 
                        0x3C, 
                        0x43, 
                        0x49, 
                        0x50, 
                        0x57, 
                        0x5D, 
                        0x64
                    })
                    Device (LCD)
                    {
                        Name (_ADR, 0x0110)
                        Method (_BCL, 0, NotSerialized)
                        {
                            Return (BRTN)
                        }

                        Method (_BCM, 1, NotSerialized)
                        {
                            Store (Arg0, BRTL)
                            Divide (Add (Multiply (Arg0, 0x03), 0x02), 0x14, Local1, 
                                Local0)
                            ShiftLeft (Local0, 0x04, Local0)
                            Or (Local0, 0x04, Local0)
                            Acquire (MUTX, 0xFFFF)
                            Store (Local0, SSMY)
                            Store (0xBF, SSMP)
                            Release (MUTX)
                        }

                        Method (_BQC, 0, NotSerialized)
                        {
                            Return (BRTL)
                        }
                    }

                    Device (LCD1)
                    {
                        Name (_ADR, 0xA420)
                        Method (_BCL, 0, NotSerialized)
                        {
                            Return (BRTN)
                        }
                    }

                    Method (_DOD, 0, NotSerialized)
                    {
                        Return (Package (0x02)
                        {
                            0x0110, 
                            0x8000A420
                        })
                    }

                    Name (ATIB, Buffer (0x0100) {})
                    Method (ATIF, 2, Serialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Return (AF00 ())
                        }

                        If (LEqual (Arg0, One))
                        {
                            Return (AF01 ())
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            Return (AF02 ())
                        }
                        Else
                        {
                            CreateWordField (ATIB, Zero, SSZE)
                            CreateWordField (ATIB, 0x02, VERN)
                            CreateDWordField (ATIB, 0x04, NMSK)
                            CreateDWordField (ATIB, 0x08, SFUN)
                            Store (Zero, SSZE)
                            Store (Zero, VERN)
                            Store (Zero, NMSK)
                            Store (Zero, SFUN)
                            Return (ATIB)
                        }
                    }

                    Method (AF00, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateWordField (ATIB, 0x02, VERN)
                        CreateDWordField (ATIB, 0x04, NMSK)
                        CreateDWordField (ATIB, 0x08, SFUN)
                        Store (0x0C, SSZE)
                        Store (One, VERN)
                        Store (0x0C, NMSK)
                        Store (0x03, SFUN)
                        Return (ATIB)
                    }

                    Method (AF01, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateDWordField (ATIB, 0x02, VMSK)
                        CreateDWordField (ATIB, 0x06, FLGS)
                        Store (0x0A, SSZE)
                        Store (0x03, VMSK)
                        Store (One, FLGS)
                        Return (ATIB)
                    }

                    Method (AF02, 0, NotSerialized)
                    {
                        CreateWordField (ATIB, Zero, SSZE)
                        CreateDWordField (ATIB, 0x02, PSBI)
                        CreateByteField (ATIB, 0x06, EXPM)
                        CreateByteField (ATIB, 0x07, THRM)
                        CreateByteField (ATIB, 0x08, THID)
                        CreateByteField (ATIB, 0x09, FPWR)
                        CreateByteField (ATIB, 0x0A, FPID)
                        CreateByteField (ATIB, 0x0B, SPWR)
                        CreateByteField (ATIB, 0x0C, PBBL)
                        Store (0x0D, SSZE)
                        Store (0x08, PSBI)
                        Store (Zero, FPWR)
                        Store (GPLT, FPID)
                        Return (ATIB)
                    }

                    Name (_PRW, Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                    OperationRegion (PEGH, PCI_Config, Zero, 0x40)
                    Field (PEGH, ByteAcc, NoLock, Preserve)
                    {
                        VID0,   16, 
                        DID0,   16
                    }

                    OperationRegion (GBAR, SystemMemory, 0xE0008000, 0x0100)
                    Field (GBAR, DWordAcc, Lock, Preserve)
                    {
                                Offset (0xB0), 
                            ,   4, 
                        LNKD,   1, 
                                Offset (0xB2), 
                            ,   4, 
                        LSTS,   6, 
                            ,   1, 
                        LTRN,   1
                    }

                    Method (PWRD, 1, NotSerialized)
                    {
                        If (Arg0)
                        {
                            Store (One, LNKD)
                            Sleep (0x64)
                            Return (Zero)
                        }
                        Else
                        {
                            Store (Zero, LNKD)
                            While (LTRN)
                            {
                                Sleep (0x0A)
                            }

                            If (LEqual (LSTS, 0x08))
                            {
                                Return (Zero)
                            }
                            Else
                            {
                                Return (One)
                            }
                        }
                    }

                    Method (_DSM, 4, NotSerialized)
                    {
                        If (LEqual (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */    0xC6, 0xB7, 0xB5, 0xA0, 0x18, 0x13, 0x1C, 0x44, 
                                    /* 0008 */    0xB0, 0xC9, 0xFE, 0x69, 0x5E, 0xAF, 0x94, 0x9B
                                }))
                        {
                            If (LNotEqual (And (VID0, 0xFFFF), 0xFFFF))
                            {
                                Store (Package (0x02)
                                    {
                                        "hda-gfx", 
                                        Buffer (0x0A)
                                        {
                                            "onboard-2"
                                        }
                                    }, Local0)
                                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                                Return (Local0)
                            }
                        }

                        Return (0x80000002)
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)
                    OperationRegion (HDAH, PCI_Config, Zero, 0x40)
                    Field (HDAH, ByteAcc, NoLock, Preserve)
                    {
                        VID0,   16, 
                        DID0,   16
                    }

                    Method (_DSM, 4, NotSerialized)
                    {
                        If (LEqual (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */    0xC6, 0xB7, 0xB5, 0xA0, 0x18, 0x13, 0x1C, 0x44, 
                                    /* 0008 */    0xB0, 0xC9, 0xFE, 0x69, 0x5E, 0xAF, 0x94, 0x9B
                                }))
                        {
                            If (LNotEqual (And (VID0, 0xFFFF), 0xFFFF))
                            {
                                Store (Package (0x02)
                                    {
                                        "hda-gfx", 
                                        Buffer (0x0A)
                                        {
                                            "onboard-2"
                                        }
                                    }, Local0)
                                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                                Return (Local0)
                            }
                        }

                        Return (0x80000002)
                    }
                }
            }

            Device (PEG1)
            {
                Name (_ADR, 0x00010001)
                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR0A ())
                    }

                    Return (PR0A ())
                }
            }

            Device (IGPU)
            {
                Name (_ADR, 0x00020000)
                Method (PCPC, 0, NotSerialized)
                {
                }

                Method (PAPR, 0, NotSerialized)
                {
                    Return (Zero)
                }

                Method (_DOS, 1, NotSerialized)
                {
                    Store (And (Arg0, 0x07), DSEN)
                    If (LEqual (And (Arg0, 0x03), Zero))
                    {
                        If (CondRefOf (HDOS))
                        {
                            HDOS ()
                        }
                    }
                }

                Method (_DOD, 0, NotSerialized)
                {
                    If (CondRefOf (IDAB)) {}
                    Else
                    {
                        Store (Zero, NDID)
                        If (LNotEqual (DIDL, Zero))
                        {
                            Store (SDDL (DIDL), DID1)
                        }

                        If (LNotEqual (DDL2, Zero))
                        {
                            Store (SDDL (DDL2), DID2)
                        }

                        If (LNotEqual (DDL3, Zero))
                        {
                            Store (SDDL (DDL3), DID3)
                        }

                        If (LNotEqual (DDL4, Zero))
                        {
                            Store (SDDL (DDL4), DID4)
                        }

                        If (LNotEqual (DDL5, Zero))
                        {
                            Store (SDDL (DDL5), DID5)
                        }

                        If (LNotEqual (DDL6, Zero))
                        {
                            Store (SDDL (DDL6), DID6)
                        }

                        If (LNotEqual (DDL7, Zero))
                        {
                            Store (SDDL (DDL7), DID7)
                        }

                        If (LNotEqual (DDL8, Zero))
                        {
                            Store (SDDL (DDL8), DID8)
                        }
                    }

                    If (LEqual (NDID, One))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            Ones
                        })
                        Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                        Return (TMP1)
                    }

                    If (LEqual (NDID, 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            Ones, 
                            Ones
                        })
                        Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP2, One))
                        Return (TMP2)
                    }

                    If (LEqual (NDID, 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP3, One))
                        Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                        Return (TMP3)
                    }

                    If (LEqual (NDID, 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP4, One))
                        Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                        Return (TMP4)
                    }

                    If (LEqual (NDID, 0x05))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP5, One))
                        Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                        Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                        Return (TMP5)
                    }

                    If (LEqual (NDID, 0x06))
                    {
                        Name (TMP6, Package (0x06)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP6, One))
                        Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                        Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                        Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                        Return (TMP6)
                    }

                    If (LEqual (NDID, 0x07))
                    {
                        Name (TMP7, Package (0x07)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP7, One))
                        Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                        Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                        Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                        Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                        Return (TMP7)
                    }

                    If (LEqual (NDID, 0x08))
                    {
                        Name (TMP8, Package (0x08)
                        {
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                        Store (Or (0x00010000, DID2), Index (TMP8, One))
                        Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                        Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                        Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                        Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                        Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                        Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                        Return (TMP8)
                    }

                    Return (Package (0x01)
                    {
                        0x0400
                    })
                }

                Device (DD01)
                {
                    Method (_ADR, 0, Serialized)
                    {
                        If (LEqual (DID1, Zero))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID1))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        Return (CDDS (DID1))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD1)
                        }

                        Return (NDDS (DID1))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD02)
                {
                    Method (_ADR, 0, Serialized)
                    {
                        If (LEqual (DID2, Zero))
                        {
                            Return (0x02)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID2))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        If (LEqual (LIDS, Zero))
                        {
                            Return (Zero)
                        }

                        Return (CDDS (DID2))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD2)
                        }

                        Return (NDDS (DID2))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }

                    Method (_BCL, 0, NotSerialized)
                    {
                        Return (Package (0x12)
                        {
                            0x50, 
                            0x2F, 
                            Zero, 
                            0x07, 
                            0x0D, 
                            0x14, 
                            0x1B, 
                            0x21, 
                            0x28, 
                            0x2F, 
                            0x35, 
                            0x3C, 
                            0x43, 
                            0x49, 
                            0x50, 
                            0x57, 
                            0x5D, 
                            0x64
                        })
                    }

                    Method (_BCM, 1, NotSerialized)
                    {
                        If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                        {
                            AINT (One, Arg0)
                            Store (Arg0, BRTL)
                        }
                    }

                    Method (_BQC, 0, NotSerialized)
                    {
                        Return (BRTL)
                    }
                }

                Device (DD03)
                {
                    Method (_ADR, 0, Serialized)
                    {
                        If (LEqual (DID3, Zero))
                        {
                            Return (0x03)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID3))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        If (LEqual (DID3, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID3))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD3)
                        }

                        Return (NDDS (DID3))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD04)
                {
                    Method (_ADR, 0, Serialized)
                    {
                        If (LEqual (DID4, Zero))
                        {
                            Return (0x04)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID4))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        If (LEqual (DID4, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID4))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD4)
                        }

                        Return (NDDS (DID4))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD05)
                {
                    Method (_ADR, 0, Serialized)
                    {
                        If (LEqual (DID5, Zero))
                        {
                            Return (0x05)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID5))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        If (LEqual (DID5, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID5))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD5)
                        }

                        Return (NDDS (DID5))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD06)
                {
                    Method (_ADR, 0, Serialized)
                    {
                        If (LEqual (DID6, Zero))
                        {
                            Return (0x06)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID6))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        If (LEqual (DID6, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID6))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD6)
                        }

                        Return (NDDS (DID6))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD07)
                {
                    Method (_ADR, 0, Serialized)
                    {
                        If (LEqual (DID7, Zero))
                        {
                            Return (0x07)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID7))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        If (LEqual (DID7, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID7))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD7)
                        }

                        Return (NDDS (DID7))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Device (DD08)
                {
                    Method (_ADR, 0, Serialized)
                    {
                        If (LEqual (DID8, Zero))
                        {
                            Return (0x08)
                        }
                        Else
                        {
                            Return (And (0xFFFF, DID8))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        If (LEqual (DID8, Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID8))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        If (CondRefOf (SNXD))
                        {
                            Return (NXD8)
                        }

                        Return (NDDS (DID8))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                        {
                            Store (NSTE, CSTE)
                        }
                    }
                }

                Method (SDDL, 1, NotSerialized)
                {
                    Increment (NDID)
                    Store (And (Arg0, 0x0F0F), Local0)
                    Or (0x80000000, Local0, Local1)
                    If (LEqual (DIDL, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL2, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL3, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL4, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL5, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL6, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL7, Local0))
                    {
                        Return (Local1)
                    }

                    If (LEqual (DDL8, Local0))
                    {
                        Return (Local1)
                    }

                    Return (Zero)
                }

                Method (CDDS, 1, NotSerialized)
                {
                    Store (And (Arg0, 0x0F0F), Local0)
                    If (LEqual (Zero, Local0))
                    {
                        Return (0x1D)
                    }

                    If (LEqual (CADL, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL2, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL3, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL4, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL5, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL6, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL7, Local0))
                    {
                        Return (0x1F)
                    }

                    If (LEqual (CAL8, Local0))
                    {
                        Return (0x1F)
                    }

                    Return (0x1D)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    Store (And (Arg0, 0x0F0F), Local0)
                    If (LEqual (Zero, Local0))
                    {
                        Return (Zero)
                    }

                    If (LEqual (NADL, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL2, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL3, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL4, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL5, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL6, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL7, Local0))
                    {
                        Return (One)
                    }

                    If (LEqual (NDL8, Local0))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                Scope (^^PCI0)
                {
                    OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                    Field (MCHP, AnyAcc, NoLock, Preserve)
                    {
                                Offset (0x60), 
                        TASM,   10, 
                                Offset (0x62)
                    }
                }

                OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
                Field (IGDP, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x12), 
                        ,   1, 
                    GIVD,   1, 
                        ,   2, 
                    GUMA,   3, 
                            Offset (0x14), 
                        ,   4, 
                    GMFN,   1, 
                            Offset (0x18), 
                            Offset (0xA4), 
                    ASLE,   8, 
                            Offset (0xA8), 
                    GSSE,   1, 
                    GSSB,   14, 
                    GSES,   1, 
                            Offset (0xB0), 
                        ,   12, 
                    CDVL,   1, 
                            Offset (0xB2), 
                            Offset (0xB5), 
                    LBPC,   8, 
                            Offset (0xBC), 
                    ASLS,   32
                }

                OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128, 
                    SIZE,   32, 
                    OVER,   32, 
                    SVER,   256, 
                    VVER,   128, 
                    GVER,   128, 
                    MBOX,   32, 
                    DMOD,   32, 
                            Offset (0x100), 
                    DRDY,   32, 
                    CSTS,   32, 
                    CEVT,   32, 
                            Offset (0x120), 
                    DIDL,   32, 
                    DDL2,   32, 
                    DDL3,   32, 
                    DDL4,   32, 
                    DDL5,   32, 
                    DDL6,   32, 
                    DDL7,   32, 
                    DDL8,   32, 
                    CPDL,   32, 
                    CPL2,   32, 
                    CPL3,   32, 
                    CPL4,   32, 
                    CPL5,   32, 
                    CPL6,   32, 
                    CPL7,   32, 
                    CPL8,   32, 
                    CADL,   32, 
                    CAL2,   32, 
                    CAL3,   32, 
                    CAL4,   32, 
                    CAL5,   32, 
                    CAL6,   32, 
                    CAL7,   32, 
                    CAL8,   32, 
                    NADL,   32, 
                    NDL2,   32, 
                    NDL3,   32, 
                    NDL4,   32, 
                    NDL5,   32, 
                    NDL6,   32, 
                    NDL7,   32, 
                    NDL8,   32, 
                    ASLP,   32, 
                    TIDX,   32, 
                    CHPD,   32, 
                    CLID,   32, 
                    CDCK,   32, 
                    SXSW,   32, 
                    EVTS,   32, 
                    CNOT,   32, 
                    NRDY,   32, 
                            Offset (0x200), 
                    SCIE,   1, 
                    GEFC,   4, 
                    GXFC,   3, 
                    GESF,   8, 
                            Offset (0x204), 
                    PARM,   32, 
                    DSLP,   32, 
                            Offset (0x300), 
                    ARDY,   32, 
                    ASLC,   32, 
                    TCHE,   32, 
                    ALSI,   32, 
                    BCLP,   32, 
                    PFIT,   32, 
                    CBLV,   32, 
                    BCLM,   320, 
                    CPFM,   32, 
                    EPFM,   32, 
                    PLUT,   592, 
                    PFMB,   32, 
                    CCDV,   32, 
                    PCFT,   32, 
                            Offset (0x400), 
                    GVD1,   49152, 
                    PHED,   32, 
                    BDDC,   2048
                }

                Name (DBTB, Package (0x15)
                {
                    Zero, 
                    0x07, 
                    0x38, 
                    0x01C0, 
                    0x0E00, 
                    0x3F, 
                    0x01C7, 
                    0x0E07, 
                    0x01F8, 
                    0x0E38, 
                    0x0FC0, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x7000, 
                    0x7007, 
                    0x7038, 
                    0x71C0, 
                    0x7E00
                })
                Name (CDCT, Package (0x05)
                {
                    Package (0x02)
                    {
                        0xE4, 
                        0x0140
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }, 

                    Package (0x02)
                    {
                        Zero, 
                        Zero
                    }, 

                    Package (0x02)
                    {
                        0xDE, 
                        0x014D
                    }
                })
                Name (SUCC, One)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GSCI, 0, Serialized)
                {
                    Method (GBDA, 0, Serialized)
                    {
                        If (LEqual (GESF, Zero))
                        {
                            Store (0x0679, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, One))
                        {
                            Store (0x0240, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x04))
                        {
                            And (PARM, 0xEFFF0000, PARM)
                            And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), 
                                PARM)
                            Or (IBTT, PARM, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x05))
                        {
                            Store (IPSC, PARM)
                            Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                            Add (PARM, 0x0100, PARM)
                            Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                            Add (PARM, 0x00010000, PARM)
                            Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x06))
                        {
                            Store (ITVF, PARM)
                            Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x07))
                        {
                            Store (GIVD, PARM)
                            XOr (PARM, One, PARM)
                            Or (PARM, ShiftLeft (GMFN, One), PARM)
                            Or (PARM, 0x1800, PARM)
                            Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                            Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL
                                )), 0x15), PARM, PARM)
                            Store (One, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0A))
                        {
                            Store (Zero, PARM)
                            If (ISSC)
                            {
                                Or (PARM, 0x03, PARM)
                            }

                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0B))
                        {
                            Store (KSV0, PARM)
                            Store (KSV1, GESF)
                            Return (SUCC)
                        }

                        Store (Zero, GESF)
                        Return (CRIT)
                    }

                    Method (SBCB, 0, Serialized)
                    {
                        If (LEqual (GESF, Zero))
                        {
                            Store (Zero, PARM)
                            Store (0x000F87FD, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, One))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x03))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x04))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x05))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x06))
                        {
                            Store (And (PARM, 0x0F), ITVF)
                            Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x07))
                        {
                            If (LEqual (PARM, Zero))
                            {
                                Store (CLID, Local0)
                                If (And (0x80000000, Local0))
                                {
                                    And (CLID, 0x0F, CLID)
                                    GLID (CLID)
                                }
                            }

                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x08))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x09))
                        {
                            And (PARM, 0xFF, IBTT)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0A))
                        {
                            And (PARM, 0xFF, IPSC)
                            If (And (ShiftRight (PARM, 0x08), 0xFF))
                            {
                                And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                                Decrement (IPAT)
                            }

                            And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x0B))
                        {
                            And (ShiftRight (PARM, One), One, IF1E)
                            If (And (PARM, 0x0001E000))
                            {
                                And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                            }
                            Else
                            {
                                And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                            }

                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x10))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x11))
                        {
                            Store (ShiftLeft (LIDS, 0x08), PARM)
                            Add (PARM, 0x0100, PARM)
                            Store (Zero, GESF)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x12))
                        {
                            If (And (PARM, One))
                            {
                                If (LEqual (ShiftRight (PARM, One), One))
                                {
                                    Store (One, ISSC)
                                }
                                Else
                                {
                                    Store (Zero, GESF)
                                    Return (CRIT)
                                }
                            }
                            Else
                            {
                                Store (Zero, ISSC)
                            }

                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x13))
                        {
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        If (LEqual (GESF, 0x14))
                        {
                            And (PARM, 0x0F, PAVP)
                            Store (Zero, GESF)
                            Store (Zero, PARM)
                            Return (SUCC)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GEFC, 0x04))
                    {
                        Store (GBDA (), GXFC)
                    }

                    If (LEqual (GEFC, 0x06))
                    {
                        Store (SBCB (), GXFC)
                    }

                    Store (Zero, GEFC)
                    Store (One, SCIS)
                    Store (Zero, GSSE)
                    Store (Zero, SCIE)
                    Return (Zero)
                }

                Method (PDRD, 0, NotSerialized)
                {
                    If (LNot (DRDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (DRDY))
                }

                Method (PSTS, 0, NotSerialized)
                {
                    If (LGreater (CSTS, 0x02))
                    {
                        Sleep (ASLP)
                    }

                    Return (LEqual (CSTS, 0x03))
                }

                Method (GNOT, 2, NotSerialized)
                {
                    If (PDRD ())
                    {
                        Return (One)
                    }

                    Store (Arg0, CEVT)
                    Store (0x03, CSTS)
                    If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                    {
                        If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                        {
                            Notify (PCI0, Arg1)
                        }
                        Else
                        {
                            Notify (IGPU, Arg1)
                        }
                    }

                    If (CondRefOf (HNOT))
                    {
                        HNOT (Arg0)
                    }
                    Else
                    {
                        Notify (IGPU, 0x80)
                    }

                    Return (Zero)
                }

                Method (GHDS, 1, NotSerialized)
                {
                    Store (Arg0, TIDX)
                    Return (GNOT (One, Zero))
                }

                Method (GLID, 1, NotSerialized)
                {
                    If (LEqual (Arg0, One))
                    {
                        Store (0x03, CLID)
                    }
                    Else
                    {
                        Store (Arg0, CLID)
                    }

                    Return (GNOT (0x02, Zero))
                }

                Method (GDCK, 1, NotSerialized)
                {
                    Store (Arg0, CDCK)
                    Return (GNOT (0x04, Zero))
                }

                Method (PARD, 0, NotSerialized)
                {
                    If (LNot (ARDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (ARDY))
                }

                Method (AINT, 2, NotSerialized)
                {
                    If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                    {
                        Return (One)
                    }

                    If (PARD ())
                    {
                        Return (One)
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        If (CPFM)
                        {
                            And (CPFM, 0x0F, Local0)
                            And (EPFM, 0x0F, Local1)
                            If (LEqual (Local0, One))
                            {
                                If (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                Else
                                {
                                    If (And (Local1, 0x08))
                                    {
                                        Store (0x08, PFIT)
                                    }
                                    Else
                                    {
                                        Store (One, PFIT)
                                    }
                                }
                            }

                            If (LEqual (Local0, 0x06))
                            {
                                If (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                Else
                                {
                                    If (And (Local1, One))
                                    {
                                        Store (One, PFIT)
                                    }
                                    Else
                                    {
                                        Store (0x06, PFIT)
                                    }
                                }
                            }

                            If (LEqual (Local0, 0x08))
                            {
                                If (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                Else
                                {
                                    If (And (Local1, 0x06))
                                    {
                                        Store (0x06, PFIT)
                                    }
                                    Else
                                    {
                                        Store (0x08, PFIT)
                                    }
                                }
                            }
                        }
                        Else
                        {
                            XOr (PFIT, 0x07, PFIT)
                        }

                        Or (PFIT, 0x80000000, PFIT)
                        Store (0x04, ASLC)
                    }
                    Else
                    {
                        If (LEqual (Arg0, One))
                        {
                            Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                            Or (BCLP, 0x80000000, BCLP)
                            Store (0x02, ASLC)
                        }
                        Else
                        {
                            If (LEqual (Arg0, Zero))
                            {
                                Store (Arg1, ALSI)
                                Store (One, ASLC)
                            }
                            Else
                            {
                                Return (One)
                            }
                        }
                    }

                    Store (One, ASLE)
                    Return (Zero)
                }

                Method (SCIP, 0, NotSerialized)
                {
                    If (LNotEqual (OVER, Zero))
                    {
                        Return (LNot (GSMI))
                    }

                    Return (Zero)
                }

                Device (^^MEM2)
                {
                    Name (_HID, EisaId ("PNP0C01"))
                    Name (_UID, 0x02)
                    Name (CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x20000000,         // Address Base
                            0x00200000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x40000000,         // Address Base
                            0x00200000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        If (IGDS)
                        {
                            Return (CRS)
                        }
                    }
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x001F0002)
            }

            Device (SBUS)
            {
                Name (_ADR, 0x001F0003)
                OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
                Field (SMBP, DWordAcc, NoLock, Preserve)
                {
                        ,   2, 
                    I2CE,   1
                }

                OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
                Field (SMPB, DWordAcc, NoLock, Preserve)
                {
                        ,   5, 
                    SBAR,   11
                }

                OperationRegion (SMBI, SystemIO, ShiftLeft (SBAR, 0x05), 0x10)
                Field (SMBI, ByteAcc, NoLock, Preserve)
                {
                    HSTS,   8, 
                            Offset (0x02), 
                    HCON,   8, 
                    HCOM,   8, 
                    TXSA,   8, 
                    DAT0,   8, 
                    DAT1,   8, 
                    HBDR,   8, 
                    PECR,   8, 
                    RXSA,   8, 
                    SDAT,   16
                }

                Method (SSXB, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    Store (Zero, I2CE)
                    Store (0xBF, HSTS)
                    Store (Arg0, TXSA)
                    Store (Arg1, HCOM)
                    Store (0x48, HCON)
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SRXB, 1, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    Store (Zero, I2CE)
                    Store (0xBF, HSTS)
                    Store (Or (Arg0, One), TXSA)
                    Store (0x44, HCON)
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (DAT0)
                    }

                    Return (0xFFFF)
                }

                Method (SWRB, 3, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    Store (Zero, I2CE)
                    Store (0xBF, HSTS)
                    Store (Arg0, TXSA)
                    Store (Arg1, HCOM)
                    Store (Arg2, DAT0)
                    Store (0x48, HCON)
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SRDB, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    Store (Zero, I2CE)
                    Store (0xBF, HSTS)
                    Store (Or (Arg0, One), TXSA)
                    Store (Arg1, HCOM)
                    Store (0x48, HCON)
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (DAT0)
                    }

                    Return (0xFFFF)
                }

                Method (SWRW, 3, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    Store (Zero, I2CE)
                    Store (0xBF, HSTS)
                    Store (Arg0, TXSA)
                    Store (Arg1, HCOM)
                    And (Arg2, 0xFF, DAT1)
                    And (ShiftRight (Arg2, 0x08), 0xFF, DAT0)
                    Store (0x4C, HCON)
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SRDW, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    Store (Zero, I2CE)
                    Store (0xBF, HSTS)
                    Store (Or (Arg0, One), TXSA)
                    Store (Arg1, HCOM)
                    Store (0x4C, HCON)
                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (Or (ShiftLeft (DAT0, 0x08), DAT1))
                    }

                    Return (Ones)
                }

                Method (SBLW, 4, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    Store (Arg3, I2CE)
                    Store (0xBF, HSTS)
                    Store (Arg0, TXSA)
                    Store (Arg1, HCOM)
                    Store (SizeOf (Arg2), DAT0)
                    Store (Zero, Local1)
                    Store (DerefOf (Index (Arg2, Zero)), HBDR)
                    Store (0x54, HCON)
                    While (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (0x0FA0, Local0)
                        While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                        {
                            Decrement (Local0)
                            Stall (0x32)
                        }

                        If (LNot (Local0))
                        {
                            KILL ()
                            Return (Zero)
                        }

                        Store (0x80, HSTS)
                        Increment (Local1)
                        If (LGreater (SizeOf (Arg2), Local1))
                        {
                            Store (DerefOf (Index (Arg2, Local1)), HBDR)
                        }
                    }

                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SBLR, 3, Serialized)
                {
                    Name (TBUF, Buffer (0x0100) {})
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    Store (Arg2, I2CE)
                    Store (0xBF, HSTS)
                    Store (Or (Arg0, One), TXSA)
                    Store (Arg1, HCOM)
                    Store (0x54, HCON)
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (DAT0, Index (TBUF, Zero))
                    Store (0x80, HSTS)
                    Store (One, Local1)
                    While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                    {
                        Store (0x0FA0, Local0)
                        While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                        {
                            Decrement (Local0)
                            Stall (0x32)
                        }

                        If (LNot (Local0))
                        {
                            KILL ()
                            Return (Zero)
                        }

                        Store (HBDR, Index (TBUF, Local1))
                        Store (0x80, HSTS)
                        Increment (Local1)
                    }

                    If (COMP ())
                    {
                        Or (HSTS, 0xFF, HSTS)
                        Return (TBUF)
                    }

                    Return (Zero)
                }

                Method (STRT, 0, Serialized)
                {
                    Store (0xC8, Local0)
                    While (Local0)
                    {
                        If (And (HSTS, 0x40))
                        {
                            Decrement (Local0)
                            Sleep (One)
                            If (LEqual (Local0, Zero))
                            {
                                Return (One)
                            }
                        }
                        Else
                        {
                            Store (Zero, Local0)
                        }
                    }

                    Store (0x0FA0, Local0)
                    While (Local0)
                    {
                        If (And (HSTS, One))
                        {
                            Decrement (Local0)
                            Stall (0x32)
                            If (LEqual (Local0, Zero))
                            {
                                KILL ()
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (COMP, 0, Serialized)
                {
                    Store (0x0FA0, Local0)
                    While (Local0)
                    {
                        If (And (HSTS, 0x02))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Decrement (Local0)
                            Stall (0x32)
                            If (LEqual (Local0, Zero))
                            {
                                KILL ()
                            }
                        }
                    }

                    Return (Zero)
                }

                Method (KILL, 0, Serialized)
                {
                    Or (HCON, 0x02, HCON)
                    Or (HSTS, 0xFF, HSTS)
                }

                Device (BUS0)
                {
                    Name (_CID, "smbus")
                    Name (_ADR, Zero)
                    Device (MKY0)
                    {
                        Name (_ADR, Zero)
                        Name (_CID, "mikey")
                        Method (_DSM, 4, NotSerialized)
                        {
                            Store (Package (0x08)
                                {
                                    "refnum", 
                                    Zero, 
                                    "address", 
                                    0x39, 
                                    "device-id", 
                                    0x0CD2, 
                                    "hdet", 
                                    One
                                }, Local0)
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Method (H1EN, 1, Serialized)
                        {
                            If (LLessEqual (Arg0, One))
                            {
                                If (LEqual (Arg0, One))
                                {
                                    Or (GP16, One, GP16)
                                }
                                Else
                                {
                                    And (GP16, Zero, GP16)
                                }
                            }
                        }

                        Method (H1IL, 0, Serialized)
                        {
                            Store (GP05, Local0)
                            Return (Local0)
                        }

                        Method (H1IP, 1, Serialized)
                        {
                            Store (Arg0, Local0)
                            If (LLessEqual (Arg0, One))
                            {
                                Not (Arg0, Arg0)
                                Store (Arg0, GI05)
                            }
                        }

                        Name (H1IN, 0x15)
                        Scope (\_GPE)
                        {
                            Method (_L15, 0, NotSerialized)
                            {
                                If (OSDW ())
                                {
                                    Notify (\_SB.PCI0.SBUS.BUS0.MKY0, 0x80)
                                }
                                Else
                                {
                                    Notify (\_SB.PWRB, 0x02)
                                }
                            }
                        }

                        Method (P1IL, 0, Serialized)
                        {
                            Store (GP03, Local0)
                            Return (Local0)
                        }

                        Method (P1IP, 1, Serialized)
                        {
                            If (LLessEqual (Arg0, One))
                            {
                                Not (Arg0, Arg0)
                                Store (Arg0, GI03)
                            }
                        }

                        Name (P1IN, 0x13)
                        Scope (\_GPE)
                        {
                            Method (_L13, 0, NotSerialized)
                            {
                                XOr (GI03, One, GI03)
                                If (OSDW ())
                                {
                                    Notify (\_SB.PCI0.SBUS.BUS0.MKY0, 0x81)
                                }
                                Else
                                {
                                    Notify (\_SB.PWRB, 0x02)
                                }
                            }
                        }
                    }
                }

                Device (BUS1)
                {
                    Name (_CID, "smbus")
                    Name (_ADR, One)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)
                Scope (\_SB)
                {
                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                                Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                                Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, One)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x02)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PBRC, 0x80, PBRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x03)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PCRC, 0x80, PCRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x04)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PDRC, 0x80, PDRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x05)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PERC, 0x80, PERC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x06)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PFRC, 0x80, PFRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x07)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PGRC, 0x80, PGRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x08)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PHRC, 0x80, PHRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                            Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))
                    Name (_CID, EisaId ("PNP0C01"))
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                    Method (_STA, 0, NotSerialized)
                    {
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            If (HPAE)
                            {
                                Return (0x0B)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, 0x04, HPT0)
                            If (LEqual (HPAS, One))
                            {
                                Store (0xFED01000, HPT0)
                            }

                            If (LEqual (HPAS, 0x02))
                            {
                                Store (0xFED02000, HPT0)
                            }

                            If (LEqual (HPAS, 0x03))
                            {
                                Store (0xFED03000, HPT0)
                            }
                        }

                        Return (BUF0)
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x02)
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (SMC)
                {
                    Name (_HID, EisaId ("APP0001"))
                    Name (_CID, "smc-huronriver")
                    Name (_STA, 0x0B)
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0300,             // Range Minimum
                            0x0300,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IRQNoFlags ()
                            {6}
                    })
                    Device (SMS0)
                    {
                        Name (_HID, EisaId ("APP0003"))
                        Name (_CID, "smc-sms")
                        Method (_DSM, 4, NotSerialized)
                        {
                            Store (Package (0x02)
                                {
                                    "disk-sense-level", 
                                    SDID
                                }, Local0)
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }
                }

                Device (ALS0)
                {
                    Name (_HID, "ACPI0008")
                    Name (_CID, "smc-als")
                    Name (BUFF, Buffer (0x02) {})
                    CreateByteField (BUFF, Zero, OB0)
                    CreateByteField (BUFF, One, OB1)
                    CreateWordField (BUFF, Zero, ALSI)
                    Method (_STA, 0, NotSerialized)
                    {
                        If (LGreaterEqual (OSYS, 0x07D9))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Method (_ALI, 0, NotSerialized)
                    {
                        Store (^^EC.ALB0, OB0)
                        Store (^^EC.ALB1, OB1)
                        Store (ALSI, Local0)
                        Return (Local0)
                    }

                    Name (_ALR, Package (0x05)
                    {
                        Package (0x02)
                        {
                            0x0A, 
                            Zero
                        }, 

                        Package (0x02)
                        {
                            0x14, 
                            0x0A
                        }, 

                        Package (0x02)
                        {
                            0x32, 
                            0x50
                        }, 

                        Package (0x02)
                        {
                            0x5A, 
                            0x012C
                        }, 

                        Package (0x02)
                        {
                            0x64, 
                            0x03E8
                        }
                    })
                }

                Device (EC)
                {
                    Name (_HID, EisaId ("PNP0C09"))
                    Name (_UID, Zero)
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Name (_GPE, 0x17)
                    Name (_PRW, Package (0x02)
                    {
                        0x23, 
                        0x04
                    })
                    Name (ECOK, Zero)
                    OperationRegion (ECOR, EmbeddedControl, Zero, 0xFF)
                    Field (ECOR, ByteAcc, Lock, Preserve)
                    {
                        ECVS,   8, 
                        LSTE,   1, 
                        RPWR,   1, 
                        CDIN,   1, 
                                Offset (0x02), 
                        LWAK,   1, 
                        ACWK,   1, 
                        CDWK,   1, 
                            ,   1, 
                        ADWK,   1, 
                                Offset (0x03), 
                        G3HT,   1, 
                                Offset (0x04), 
                        WBCB,   1, 
                        DSLP,   1, 
                                Offset (0x05), 
                                Offset (0x06), 
                        WKRS,   8, 
                                Offset (0x10), 
                        ECSS,   8, 
                        PLIM,   8, 
                        ALB0,   8, 
                        ALB1,   8, 
                        WTLB,   8, 
                        WTMB,   8, 
                                Offset (0x20), 
                        SPTR,   8, 
                        SSTS,   8, 
                        SADR,   8, 
                        SCMD,   8, 
                        SBFR,   256, 
                        SCNT,   8, 
                        SAAD,   8, 
                        SAD0,   8, 
                        SAD1,   8, 
                        SMUX,   8, 
                                Offset (0x60), 
                        ELSW,   1, 
                        EACP,   1, 
                        ECDI,   1, 
                        ENMI,   1, 
                                Offset (0x61), 
                        EMHP,   1, 
                                Offset (0x62), 
                                Offset (0x63), 
                                Offset (0x64), 
                        SWLO,   1, 
                        SWLC,   1, 
                        SWAI,   1, 
                        SWAR,   1, 
                        SWCI,   1, 
                        SWCE,   1, 
                        SWMI,   1, 
                        SWMR,   1, 
                        SWPB,   1, 
                        SWGP,   1, 
                        SWPM,   1, 
                        SWWT,   1, 
                        SWLB,   1, 
                                Offset (0x66), 
                                Offset (0x67), 
                                Offset (0x68), 
                        EWLO,   1, 
                        EWLC,   1, 
                        EWAI,   1, 
                        EWAR,   1, 
                        EWCI,   1, 
                        EWCE,   1, 
                        EWMI,   1, 
                        EWMR,   1, 
                        EWPB,   1, 
                        EWGP,   1, 
                        EWPM,   1, 
                        ENWT,   1, 
                        EWLB,   1, 
                                Offset (0x6A), 
                                Offset (0x6B), 
                                Offset (0x6C), 
                        LWLO,   1, 
                        LWLC,   1, 
                        LWAI,   1, 
                        LWAR,   1, 
                        LWCI,   1, 
                        LWCE,   1, 
                        LWMI,   1, 
                        LWMR,   1, 
                        LWPB,   1, 
                        LWGP,   1, 
                        LWPM,   1, 
                        LWWT,   1, 
                        LWLB,   1, 
                                Offset (0x6E), 
                                Offset (0x6F), 
                                Offset (0x70)
                    }

                    Field (ECOR, ByteAcc, Lock, Preserve)
                    {
                                Offset (0x03), 
                        G3AD,   1, 
                        BLOD,   1, 
                        S4WE,   1, 
                                Offset (0x04), 
                                Offset (0x6C), 
                        LWE0,   8, 
                        LWE1,   8, 
                        LWE2,   8, 
                        LWE3,   8
                    }

                    Field (ECOR, ByteAcc, Lock, Preserve)
                    {
                                Offset (0x24), 
                        SBDW,   16, 
                                Offset (0x46), 
                        SADW,   16
                    }

                    Method (WAKE, 0, NotSerialized)
                    {
                        If (ECOK)
                        {
                            Store ("EC Wake reason =", Debug)
                            Store (WKRS, Debug)
                            If (DSLP)
                            {
                                Store (EWAI, Debug)
                                Store (EWAR, Debug)
                            }
                            Else
                            {
                                Store (ACWK, Debug)
                                Store (ADWK, Debug)
                            }

                            Return (WKRS)
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Device (SMB0)
                    {
                        Name (_HID, "ACPI0001")
                        Name (_EC, 0x2010)
                        Mutex (SMTX, 0x00)
                        Method (_STA, 0, NotSerialized)
                        {
                            If (OSDW ())
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Device (SBS0)
                        {
                            Name (_HID, "ACPI0002")
                            Name (_SBS, One)
                        }

                        Method (SBPC, 1, NotSerialized)
                        {
                            Store (Arg0, Local0)
                            While (Local0)
                            {
                                If (LEqual (SPTR, Zero))
                                {
                                    Return (And (SSTS, 0x1F))
                                }

                                Sleep (One)
                                Decrement (Local0)
                            }

                            Return (0x18)
                        }

                        Method (SBRW, 3, NotSerialized)
                        {
                            Store (One, Local0)
                            If (LNot (Acquire (SMTX, 0xFFFF)))
                            {
                                If (LEqual (SPTR, Zero))
                                {
                                    Store (ShiftLeft (Arg0, One), SADR)
                                    Store (Arg1, SCMD)
                                    Store (0x09, SPTR)
                                    Store (SBPC (0x03E8), Local0)
                                    If (LNot (Local0))
                                    {
                                        Store (SBDW, Arg2)
                                    }
                                }

                                Release (SMTX)
                            }

                            Return (Local0)
                        }

                        Method (SBRB, 3, NotSerialized)
                        {
                            Store (One, Local0)
                            Store (Buffer (One)
                                {
                                    0x00
                                }, Local1)
                            If (LNot (Acquire (SMTX, 0xFFFF)))
                            {
                                If (LEqual (SPTR, Zero))
                                {
                                    Store (ShiftLeft (Arg0, One), SADR)
                                    Store (Arg1, SCMD)
                                    Store (0x0B, SPTR)
                                    Store (SBPC (0x03E8), Local0)
                                    If (LNot (Local0))
                                    {
                                        Store (SBFR, Arg2)
                                    }
                                }

                                Release (SMTX)
                            }

                            Return (Local0)
                        }
                    }

                    Method (_Q10, 0, NotSerialized)
                    {
                        If (OSDW ())
                        {
                            Notify (SMB0, 0x80)
                        }
                        Else
                        {
                            If (And (SSTS, 0x40))
                            {
                                If (LNot (Acquire (^SMB0.SMTX, 0xFFFF)))
                                {
                                    Store (ShiftRight (SAAD, One), Local0)
                                    If (LEqual (Local0, 0x0A))
                                    {
                                        ^^^^BAT0.BNOT (SADW)
                                    }

                                    Store (Zero, SSTS)
                                    Release (^SMB0.SMTX)
                                }
                            }
                        }
                    }

                    Method (_Q20, 0, NotSerialized)
                    {
                        If (DSLP)
                        {
                            Store (ELSW, LIDS)
                            Store (ELSW, ^^^IGPU.CLID)
                        }
                        Else
                        {
                            Store (LSTE, LIDS)
                            Store (LSTE, ^^^IGPU.CLID)
                        }

                        Notify (LID0, 0x80)
                    }

                    Method (_Q21, 0, NotSerialized)
                    {
                        If (DSLP)
                        {
                            If (EACP)
                            {
                                Store (One, PWRS)
                            }
                            Else
                            {
                                Store (Zero, PWRS)
                            }
                        }
                        Else
                        {
                            If (RPWR)
                            {
                                Store (One, PWRS)
                            }
                            Else
                            {
                                Store (Zero, PWRS)
                            }
                        }

                        Notify (ADP1, 0x80)
                        PNOT ()
                    }

                    Method (_Q40, 0, NotSerialized)
                    {
                        Notify (ALS0, 0x80)
                    }

                    Method (_Q5A, 0, NotSerialized)
                    {
                        Notify (SLPB, 0x80)
                    }

                    Method (_Q80, 0, NotSerialized)
                    {
                        Notify (\_PR.CPU0, 0x80)
                        Notify (\_PR.CPU1, 0x80)
                        Notify (\_PR.CPU2, 0x80)
                        Notify (\_PR.CPU3, 0x80)
                        Notify (\_PR.CPU4, 0x80)
                        Notify (\_PR.CPU5, 0x80)
                        Notify (\_PR.CPU6, 0x80)
                        Notify (\_PR.CPU7, 0x80)
                    }

                    Method (_QCD, 0, NotSerialized)
                    {
                        If (DSLP)
                        {
                            If (ECDI)
                            {
                                If (GP52)
                                {
                                    Notify (^^^SATA.PRT2, 0x81)
                                }
                                Else
                                {
                                    Notify (^^^SATA.PRT1, 0x81)
                                }
                            }
                            Else
                            {
                                If (GP52)
                                {
                                    Notify (^^^SATA.PRT2, 0x82)
                                }
                                Else
                                {
                                    Notify (^^^SATA.PRT1, 0x82)
                                }
                            }
                        }
                        Else
                        {
                            If (CDIN)
                            {
                                If (GP52)
                                {
                                    Notify (^^^SATA.PRT2, 0x81)
                                }
                                Else
                                {
                                    Notify (^^^SATA.PRT1, 0x81)
                                }
                            }
                            Else
                            {
                                If (GP52)
                                {
                                    Notify (^^^SATA.PRT2, 0x82)
                                }
                                Else
                                {
                                    Notify (^^^SATA.PRT1, 0x82)
                                }
                            }
                        }
                    }

                    Method (_REG, 2, NotSerialized)
                    {
                        If (LOr (LEqual (Arg0, 0x03), LGreaterEqual (OSYS, 0x07D6)))
                        {
                            Store (Arg1, ECOK)
                            If (LEqual (Arg1, One))
                            {
                                Store (Zero, ECSS)
                                If (DSLP)
                                {
                                    Store (ELSW, LIDS)
                                    Store (ELSW, ^^^IGPU.CLID)
                                }
                                Else
                                {
                                    Store (LSTE, LIDS)
                                    Store (LSTE, ^^^IGPU.CLID)
                                }

                                Notify (LID0, 0x80)
                                If (DSLP)
                                {
                                    Store (EACP, PWRS)
                                }
                                Else
                                {
                                    Store (RPWR, PWRS)
                                }

                                Notify (ADP1, 0x80)
                            }
                        }
                    }
                }

                Scope (\_SB)
                {
                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A"))
                        Name (_UID, Zero)
                        Name (_PCL, Package (0x01)
                        {
                            _SB
                        })
                        Name (BSSW, 0xFFFF)
                        Name (PBIF, Package (0x0D)
                        {
                            Zero, 
                            Ones, 
                            Ones, 
                            One, 
                            Ones, 
                            0xFA, 
                            0x64, 
                            0x0A, 
                            0x0A, 
                            " ", 
                            " ", 
                            " ", 
                            " "
                        })
                        Name (PBST, Package (0x04)
                        {
                            Zero, 
                            Ones, 
                            Ones, 
                            Ones
                        })
                        Method (_STA, 0, NotSerialized)
                        {
                            If (OSDW ())
                            {
                                Return (Zero)
                            }

                            If (^^PCI0.LPCB.EC.ECOK)
                            {
                                UBSS ()
                                If (And (BSSW, One))
                                {
                                    Return (0x1F)
                                }
                                Else
                                {
                                    Return (0x0F)
                                }
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BST, 0, NotSerialized)
                        {
                            If (And (BSSW, One))
                            {
                                UBST ()
                            }
                            Else
                            {
                                Store (Zero, Index (PBST, Zero))
                                Store (Ones, Index (PBST, One))
                                Store (Ones, Index (PBST, 0x02))
                            }

                            Return (PBST)
                        }

                        Method (_BIF, 0, NotSerialized)
                        {
                            If (And (BSSW, One))
                            {
                                UBIF ()
                            }

                            Return (PBIF)
                        }

                        Method (BNOT, 1, NotSerialized)
                        {
                            Store (BSSW, Local0)
                            Store (Arg0, BSSW)
                            Notify (BAT0, 0x80)
                            If (And (XOr (Local0, Arg0), One))
                            {
                                Notify (BAT0, 0x81)
                            }
                        }

                        Method (UBSS, 0, NotSerialized)
                        {
                            ^^PCI0.LPCB.EC.SMB0.SBRW (0x0A, One, RefOf (BSSW))
                        }

                        Method (UBIF, 0, NotSerialized)
                        {
                            ^^PCI0.LPCB.EC.SMB0.SBRW (0x0B, 0x18, RefOf (Local0))
                            Multiply (Local0, 0x0A, Index (PBIF, One))
                            ^^PCI0.LPCB.EC.SMB0.SBRW (0x0B, 0x10, RefOf (Local0))
                            Multiply (Local0, 0x0A, Index (PBIF, 0x02))
                            ^^PCI0.LPCB.EC.SMB0.SBRW (0x0B, 0x19, RefOf (Local0))
                            Store (Local0, Index (PBIF, 0x04))
                            ^^PCI0.LPCB.EC.SMB0.SBRB (0x0B, 0x21, RefOf (Local0))
                            Store (Local0, Index (PBIF, 0x09))
                            Store (Buffer (One)
                                {
                                    0x00
                                }, Index (PBIF, 0x0A))
                            ^^PCI0.LPCB.EC.SMB0.SBRB (0x0B, 0x22, RefOf (Local0))
                            Store (Local0, Index (PBIF, 0x0B))
                            ^^PCI0.LPCB.EC.SMB0.SBRB (0x0B, 0x20, RefOf (Local0))
                            Store (Local0, Index (PBIF, 0x0C))
                        }

                        Method (UBST, 0, NotSerialized)
                        {
                            ^^PCI0.LPCB.EC.SMB0.SBRW (0x0B, 0x09, RefOf (Local2))
                            Store (Local2, Index (PBST, 0x03))
                            ^^PCI0.LPCB.EC.SMB0.SBRW (0x0B, 0x0A, RefOf (Local0))
                            If (And (Local0, 0x8000))
                            {
                                Not (Local0, Local0)
                                And (Increment (Local0), 0xFFFF, Local0)
                            }

                            Multiply (Local0, Local2, Local0)
                            Divide (Local0, 0x03E8, , Index (PBST, One))
                            ^^PCI0.LPCB.EC.SMB0.SBRW (0x0B, 0x0F, RefOf (Local0))
                            Multiply (Local0, 0x0A, Index (PBST, 0x02))
                            Store (Zero, Local1)
                            If (PWRS)
                            {
                                ^^PCI0.LPCB.EC.SMB0.SBRW (0x0B, 0x16, RefOf (Local0))
                                If (LNot (And (Local0, 0x40)))
                                {
                                    Store (0x02, Local1)
                                }
                            }
                            Else
                            {
                                Store (One, Local1)
                            }

                            Store (Local1, Index (PBST, Zero))
                        }
                    }
                }

                Device (GMUX)
                {
                    Name (_HID, EisaId ("APP000B"))
                    Name (_CID, "gmux")
                    Name (_STA, 0x0B)
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0700,             // Range Minimum
                            0x07FF,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                    })
                    Name (_PRW, Package (0x02)
                    {
                        0x16, 
                        0x03
                    })
                    Scope (\_GPE)
                    {
                        Method (_L16, 0, NotSerialized)
                        {
                            Notify (\_SB.PCI0.LPCB.GMUX, 0x80)
                        }
                    }

                    Name (GMGP, 0x16)
                    Method (GMSP, 1, NotSerialized)
                    {
                        If (LLessEqual (Arg0, One))
                        {
                            Or (GP06, Arg0, GP06)
                        }
                    }

                    Method (GMLV, 0, NotSerialized)
                    {
                        Return (GP06)
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)
                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)
                OperationRegion (A1E0, PCI_Config, Zero, 0x60)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x04), 
                    BMIE,   3, 
                            Offset (0x19), 
                    SECB,   8, 
                    SBBN,   8, 
                            Offset (0x1E), 
                        ,   13, 
                    MABT,   1, 
                            Offset (0x4A), 
                        ,   5, 
                    TPEN,   1, 
                            Offset (0x50), 
                        ,   4, 
                    LDIS,   1, 
                        ,   24, 
                    LACT,   1
                }

                Method (_BBN, 0, NotSerialized)
                {
                    Return (SECB)
                }

                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Device (GIGE)
                {
                    Name (_ADR, Zero)
                    OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                    Field (ARE0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   16
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        Return (0x0F)
                    }

                    Name (_PRW, Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                    Method (_RMV, 0, NotSerialized)
                    {
                        Return (Zero)
                    }

                    Method (_PSW, 1, NotSerialized)
                    {
                        If (Arg0)
                        {
                            Store (One, GP45)
                        }
                        Else
                        {
                            Store (Zero, GP45)
                        }
                    }
                }

                Device (SDXC)
                {
                    Name (_ADR, One)
                    Name (_PRW, Package (0x02)
                    {
                        0x19, 
                        0x03
                    })
                    Method (_RMV, 0, NotSerialized)
                    {
                        Return (Zero)
                    }

                    OperationRegion (ARE1, PCI_Config, Zero, 0x04)
                    Field (ARE1, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   16
                    }
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR04 ())
                    }

                    Return (PR04 ())
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)
                OperationRegion (A1E0, PCI_Config, Zero, 0xFF)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x04), 
                    BMIE,   3, 
                            Offset (0x19), 
                    SECB,   8, 
                    SBBN,   8, 
                            Offset (0x1E), 
                        ,   13, 
                    MABT,   1, 
                            Offset (0x4A), 
                        ,   5, 
                    TPEN,   1, 
                            Offset (0x50), 
                        ,   4, 
                    LDIS,   1, 
                        ,   24, 
                    LACT,   1, 
                            Offset (0xA4), 
                    PSTA,   2
                }

                Method (_BBN, 0, NotSerialized)
                {
                    If (LAnd (LEqual (BMIE, Zero), LEqual (SECB, 0xFF)))
                    {
                        Return (SNBS)
                    }
                    Else
                    {
                        Return (SECB)
                    }
                }

                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Name (BMIS, Zero)
                Name (SNBS, Zero)
                Name (SOBS, Zero)
                Method (APPD, 0, Serialized)
                {
                }

                Method (APPU, 0, Serialized)
                {
                }

                Method (ALPR, 1, NotSerialized)
                {
                    If (LEqual (Arg0, One))
                    {
                        APPD ()
                    }
                    Else
                    {
                        APPU ()
                    }
                }

                Method (_PS0, 0, Serialized)
                {
                    ALPR (Zero)
                }

                Method (_PS3, 0, Serialized)
                {
                    ALPR (One)
                }

                Device (ARPT)
                {
                    Name (_ADR, Zero)
                    OperationRegion (ARE2, PCI_Config, Zero, 0xFF)
                    Field (ARE2, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   16, 
                        ADID,   16, 
                                Offset (0x44), 
                        PSTA,   2
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        Return (0x0F)
                    }

                    Name (_PRW, Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                    Method (_RMV, 0, NotSerialized)
                    {
                        Return (Zero)
                    }

                    Method (WWEN, 1, NotSerialized)
                    {
                        Store (Arg0, WOWE)
                    }
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR05 ())
                    }

                    Return (PR05 ())
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)
                OperationRegion (A1E0, PCI_Config, 0x19, One)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    SECB,   8
                }

                Method (_BBN, 0, NotSerialized)
                {
                    Return (SECB)
                }

                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Device (FRWR)
                {
                    Name (_ADR, Zero)
                    Name (_GPE, 0x11)
                    Method (_DSM, 4, NotSerialized)
                    {
                        Store (Package (0x04)
                            {
                                "fwports", 
                                Buffer (0x04)
                                {
                                    0x01, 0x00, 0x00, 0x00
                                }, 

                                "fws0", 
                                Buffer (0x04)
                                {
                                    0x01, 0x00, 0x00, 0x00
                                }
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Method (_RMV, 0, NotSerialized)
                    {
                        Return (Zero)
                    }

                    Method (FPEN, 1, Serialized)
                    {
                        If (LLessEqual (Arg0, One))
                        {
                            Store (Arg0, GP48)
                        }
                    }

                    Scope (\_GPE)
                    {
                        Method (_L11, 0, NotSerialized)
                        {
                            If (OSDW ())
                            {
                                Notify (\_SB.PCI0.RP03.FRWR, Zero)
                            }
                            Else
                            {
                                Notify (\_SB.PWRB, 0x02)
                            }
                        }
                    }
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR06 ())
                    }

                    Return (PR06 ())
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)
                OperationRegion (A1E0, PCI_Config, 0x19, One)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    SECB,   8
                }

                Device (EXCD)
                {
                    Name (_ADR, Zero)
                    Name (_SUN, One)
                    Method (_RMV, 0, NotSerialized)
                    {
                        Return (One)
                    }

                    Name (_EJD, "\\_SB.PCI0.EHC2.HUBN.PRTN.PRT4")
                }

                Method (_BBN, 0, NotSerialized)
                {
                    Return (SECB)
                }

                Method (_STA, 0, NotSerialized)
                {
                    Return (0x0F)
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR07 ())
                    }

                    Return (PR07 ())
                }
            }

            Scope (PEG1)
            {
                OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                            Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                            Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                OperationRegion (A1E1, PCI_Config, 0xA0, 0x40)
                Field (A1E1, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x01), 
                            Offset (0x02), 
                            Offset (0x04), 
                            Offset (0x08), 
                            Offset (0x0A), 
                        ,   5, 
                    TPEN,   1, 
                            Offset (0x0C), 
                    SSPD,   4, 
                        ,   16, 
                    LACR,   1, 
                            Offset (0x10), 
                        ,   4, 
                    LDIS,   1, 
                    LRTN,   1, 
                            Offset (0x12), 
                    CSPD,   4, 
                        ,   7, 
                    LTRN,   1, 
                        ,   1, 
                    LACT,   1, 
                            Offset (0x14), 
                            Offset (0x30), 
                    TSPD,   4
                }

                OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                Field (A1E2, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x01), 
                            Offset (0x02), 
                            Offset (0x04), 
                    PSTA,   2
                }

                OperationRegion (A1E3, PCI_Config, 0x0200, 0x20)
                Field (A1E3, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x14), 
                            Offset (0x16), 
                    PSTS,   4
                }

                Device (UPSB)
                {
                    Name (_ADR, Zero)
                    OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                                Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                                Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                    Field (A1E1, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0x01), 
                                Offset (0x02), 
                                Offset (0x04), 
                                Offset (0x08), 
                                Offset (0x0A), 
                            ,   5, 
                        TPEN,   1, 
                                Offset (0x0C), 
                        SSPD,   4, 
                                Offset (0x10), 
                            ,   4, 
                        LDIS,   1, 
                        LRTN,   1, 
                            ,   23, 
                        LACT,   1, 
                                Offset (0x30), 
                        TSPD,   4
                    }

                    OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                    Field (A1E2, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0x01), 
                                Offset (0x02), 
                                Offset (0x04), 
                        PSTA,   2
                    }

                    Method (_BBN, 0, NotSerialized)
                    {
                        Return (SECB)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        Return (0x0F)
                    }

                    Device (DSB0)
                    {
                        Name (_ADR, Zero)
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                                    Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                                    Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                        Field (A1E1, ByteAcc, NoLock, Preserve)
                        {
                                    Offset (0x01), 
                                    Offset (0x02), 
                                    Offset (0x04), 
                                    Offset (0x08), 
                                    Offset (0x0A), 
                                ,   5, 
                            TPEN,   1, 
                                    Offset (0x0C), 
                                    Offset (0x10), 
                                ,   4, 
                            LDIS,   1, 
                            LRTN,   1, 
                                ,   23, 
                            LACT,   1
                        }

                        OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                        Field (A1E2, ByteAcc, NoLock, Preserve)
                        {
                                    Offset (0x01), 
                                    Offset (0x02), 
                                    Offset (0x04), 
                            PSTA,   2
                        }

                        Method (_BBN, 0, NotSerialized)
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)
                        {
                            Return (0x0F)
                        }

                        Device (NHI0)
                        {
                            Name (_ADR, Zero)
                            Method (_EJ0, 1, NotSerialized)
                            {
                                If (LNot (OSDW ()))
                                {
                                    Store (One, ^^^^LDIS)
                                    Sleep (0x07D0)
                                    Store (Zero, GP23)
                                    Sleep (0x07D0)
                                    Notify (PEG1, Zero)
                                }
                            }

                            OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                        Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                        Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (XRPE, 1, Serialized)
                            {
                                If (OSDW ())
                                {
                                    If (LLessEqual (Arg0, One))
                                    {
                                        If (LEqual (Arg0, Zero))
                                        {
                                            Store (0x03, ^^^^PSTA)
                                            Store (One, ^^^^LDIS)
                                            Add (Timer, 0x00989680, Local0)
                                            While (LLessEqual (Timer, Local0))
                                            {
                                                If (LEqual (LACR, One))
                                                {
                                                    If (LEqual (^^^^LACT, Zero))
                                                    {
                                                        Break
                                                    }
                                                }
                                                Else
                                                {
                                                    If (LEqual (^^^AVND, Ones))
                                                    {
                                                        Break
                                                    }
                                                }

                                                Sleep (0x0A)
                                            }

                                            Store (Zero, GP23)
                                        }
                                        Else
                                        {
                                            Store (Zero, Local0)
                                            If (LEqual (GP23, Zero))
                                            {
                                                Store (Zero, ^^^^PSTA)
                                                While (One)
                                                {
                                                    Store (One, GP23)
                                                    Sleep (0x07D0)
                                                    Store (Zero, Local1)
                                                    Store (Zero, ^^^^LDIS)
                                                    Add (Timer, 0x00989680, Local2)
                                                    While (LLessEqual (Timer, Local2))
                                                    {
                                                        If (LAnd (LNotEqual (LTRN, One), LNotEqual (^^^AVND, Ones)))
                                                        {
                                                            Store (One, Local1)
                                                            Break
                                                        }

                                                        Sleep (0x0A)
                                                    }

                                                    If (LEqual (Local1, One))
                                                    {
                                                        Store (One, MABT)
                                                        Break
                                                    }

                                                    If (LEqual (Local0, 0x04))
                                                    {
                                                        Return (Zero)
                                                    }

                                                    Increment (Local0)
                                                    Store (Zero, GP23)
                                                    Sleep (0x03E8)
                                                }

                                                If (LEqual (CSPD, One))
                                                {
                                                    If (LEqual (^^^^SSPD, 0x02))
                                                    {
                                                        If (LEqual (SSPD, 0x02))
                                                        {
                                                            If (LNotEqual (^^^^TSPD, 0x02))
                                                            {
                                                                Store (0x02, ^^^^TSPD)
                                                            }

                                                            If (LNotEqual (TSPD, 0x02))
                                                            {
                                                                Store (0x02, TSPD)
                                                            }

                                                            Store (One, ^^^^LRTN)
                                                            Add (Timer, 0x00989680, Local2)
                                                            While (LLessEqual (Timer, Local2))
                                                            {
                                                                If (LAnd (LNotEqual (LTRN, One), LNotEqual (^^^AVND, Ones)))
                                                                {
                                                                    Store (One, Local1)
                                                                    Break
                                                                }

                                                                Sleep (0x0A)
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }

                                Return (Zero)
                            }

                            Method (XRIP, 1, Serialized)
                            {
                                If (LLessEqual (Arg0, One))
                                {
                                    Store (Arg0, GI04)
                                }
                            }

                            Method (XRIO, 1, Serialized)
                            {
                                If (LLessEqual (Arg0, One))
                                {
                                    Store (Arg0, GD04)
                                }
                            }

                            Method (XRIL, 0, Serialized)
                            {
                                Return (GP04)
                            }

                            Name (XRIN, 0x14)
                            Name (_GPE, 0x14)
                            Method (_DSM, 4, NotSerialized)
                            {
                                Store (Package (0x03)
                                    {
                                        "power-save", 
                                        One, 
                                        Buffer (One)
                                        {
                                            0x00
                                        }
                                    }, Local0)
                                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                                Return (Local0)
                            }
                        }
                    }

                    Device (DSB1)
                    {
                        Name (_ADR, 0x00030000)
                        Name (_SUN, 0x02)
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                                    Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                                    Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)
                        {
                            Return (0x0F)
                        }
                    }

                    Device (DSB2)
                    {
                        Name (_ADR, 0x00040000)
                        Name (_SUN, 0x03)
                        Method (_RMV, 0, NotSerialized)
                        {
                            Return (OSDW ())
                        }

                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                                    Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                                    Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)
                        {
                            Return (0x0F)
                        }

                        Device (UPS2)
                        {
                            Name (_ADR, Zero)
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }
                        }
                    }

                    Device (DSB3)
                    {
                        Name (_ADR, 0x00050000)
                        Name (_SUN, 0x04)
                        Method (_RMV, 0, NotSerialized)
                        {
                            Return (OSDW ())
                        }

                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                                    Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                                    Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)
                        {
                            Return (0x0F)
                        }

                        Device (UPS2)
                        {
                            Name (_ADR, Zero)
                            OperationRegion (ARE0, PCI_Config, Zero, 0x04)
                            Field (ARE0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   16
                            }
                        }
                    }

                    Device (DSB4)
                    {
                        Name (_ADR, 0x00060000)
                        Name (_SUN, 0x05)
                        OperationRegion (A1E0, PCI_Config, Zero, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                                    Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                                    Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (_BBN, 0, NotSerialized)
                        {
                            Return (SECB)
                        }

                        Method (_STA, 0, NotSerialized)
                        {
                            Return (0x0F)
                        }
                    }

                    Method (_DSM, 4, NotSerialized)
                    {
                        If (LEqual (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */    0xC6, 0xB7, 0xB5, 0xA0, 0x18, 0x13, 0x1C, 0x44, 
                                    /* 0008 */    0xB0, 0xC9, 0xFE, 0x69, 0x5E, 0xAF, 0x94, 0x9B
                                }))
                        {
                            Store (Package (0x02)
                                {
                                    "PCI-Thunderbolt", 
                                    One
                                }, Local0)
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Return (0x80000002)
                    }
                }
            }
        }

        Device (ADP1)
        {
            Name (_HID, "ACPI0003")
            Name (_PRW, Package (0x02)
            {
                0x23, 
                0x04
            })
            Name (WK00, One)
            Method (SWAK, 1, NotSerialized)
            {
                And (Arg0, 0x03, WK00)
                If (LNot (WK00))
                {
                    Store (One, WK00)
                }
            }

            Method (_PSR, 0, NotSerialized)
            {
                Return (PWRS)
            }

            Method (_PCL, 0, NotSerialized)
            {
                Return (_SB)
            }

            Method (_PSW, 1, NotSerialized)
            {
                If (OSDW ())
                {
                    If (^^PCI0.LPCB.EC.ECOK)
                    {
                        If (^^PCI0.LPCB.EC.DSLP)
                        {
                            If (Arg0)
                            {
                                If (And (WK00, One))
                                {
                                    Store (One, ^^PCI0.LPCB.EC.EWAI)
                                }

                                If (And (WK00, 0x02))
                                {
                                    Store (One, ^^PCI0.LPCB.EC.EWAR)
                                }
                            }
                            Else
                            {
                                Store (Zero, ^^PCI0.LPCB.EC.EWAI)
                                Store (Zero, ^^PCI0.LPCB.EC.EWAR)
                            }
                        }
                        Else
                        {
                            If (Arg0)
                            {
                                If (And (WK00, One))
                                {
                                    Store (One, ^^PCI0.LPCB.EC.ACWK)
                                }

                                If (And (WK00, 0x02))
                                {
                                    Store (One, ^^PCI0.LPCB.EC.ADWK)
                                }
                            }
                            Else
                            {
                                Store (Zero, ^^PCI0.LPCB.EC.ACWK)
                                Store (Zero, ^^PCI0.LPCB.EC.ADWK)
                            }
                        }
                    }
                }
            }
        }

        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D"))
            Name (_PRW, Package (0x02)
            {
                0x23, 
                0x04
            })
            Method (_LID, 0, NotSerialized)
            {
                Return (LIDS)
            }

            Method (_PSW, 1, NotSerialized)
            {
                If (^^PCI0.LPCB.EC.ECOK)
                {
                    If (^^PCI0.LPCB.EC.DSLP)
                    {
                        If (Arg0)
                        {
                            Store (One, ^^PCI0.LPCB.EC.EWLO)
                        }
                        Else
                        {
                            Store (Zero, ^^PCI0.LPCB.EC.EWLO)
                        }
                    }
                    Else
                    {
                        If (Arg0)
                        {
                            Store (One, ^^PCI0.LPCB.EC.LWAK)
                        }
                        Else
                        {
                            Store (Zero, ^^PCI0.LPCB.EC.LWAK)
                        }
                    }
                }
            }
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
        Processor (CPU4, 0x05, 0x00000410, 0x06) {}
        Processor (CPU5, 0x06, 0x00000410, 0x06) {}
        Processor (CPU6, 0x07, 0x00000410, 0x06) {}
        Processor (CPU7, 0x08, 0x00000410, 0x06) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    OperationRegion (PLMT, SystemIO, 0x0310, 0x0A)
    Field (PLMT, WordAcc, Lock, Preserve)
    {
        CPLT,   8, 
        GPLT,   4, 
                Offset (0x02), 
        MPLT,   8, 
        CFIL,   8
    }

    Method (P8XH, 2, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }

        If (LEqual (Arg0, One))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)
                ), P80D)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)
                ), P80D)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)
                ), P80D)
        }

        Store (P80D, P80H)
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8, 
        SSMY,   8
    }

    Method (_PIC, 1, NotSerialized)
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    Method (GETB, 3, Serialized)
    {
        Multiply (Arg0, 0x08, Local0)
        Multiply (Arg1, 0x08, Local1)
        CreateField (Arg2, Local0, Local1, TBF3)
        Return (TBF3)
    }

    Method (PNOT, 0, Serialized)
    {
        If (LGreater (TCNT, One))
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81)
                }
            }

            If (And (PDC4, 0x08))
            {
                Notify (\_PR.CPU4, 0x80)
                If (And (PDC4, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81)
                }
            }

            If (And (PDC5, 0x08))
            {
                Notify (\_PR.CPU5, 0x80)
                If (And (PDC5, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81)
                }
            }

            If (And (PDC6, 0x08))
            {
                Notify (\_PR.CPU6, 0x80)
                If (And (PDC6, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81)
                }
            }

            If (And (PDC7, 0x08))
            {
                Notify (\_PR.CPU7, 0x80)
                If (And (PDC7, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81)
        }
    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTP))
        {
            Store (Zero, TRP0)
        }

        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }

        If (LEqual (Arg0, TRTI))
        {
            Store (Zero, TRPH)
        }

        Return (SMIF)
    }

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)
        {
            Store (One, UH2D)
            Store (One, UH3D)
            Store (One, UH4D)
            Store (One, UH6D)
            Store (One, UH7D)
            PINI ()
            If (LNot (OSDW ()))
            {
                If (LAnd (LEqual (^PCI0.PEG1.UPSB.DSB2.UPS2.AVND, 0xFFFF), LEqual (^PCI0.PEG1.UPSB.DSB3.UPS2.AVND, 0xFFFF)))
                {
                    Store (One, ^PCI0.PEG1.LDIS)
                    Sleep (0x07D0)
                    Store (Zero, GP23)
                }
            }
        }

        Device (PNLF)
        {
            Name (_HID, EisaId ("APP0002"))
            Name (_CID, "backlight")
            Name (_UID, 0x0E)
            Name (_STA, 0x0B)
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))
            Name (_STA, 0x0B)
        }
    }

    Scope (_SB.PCI0)
    {
        Method (_INI, 0, NotSerialized)
        {
            Store (0x07D0, OSYS)
            If (CondRefOf (\_OSI, Local0))
            {
                If (_OSI ("Darwin"))
                {
                    Store (0x2710, OSYS)
                }

                If (_OSI ("Linux"))
                {
                    Store (0x03E8, OSYS)
                }

                If (_OSI ("Windows 2001"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP1"))
                {
                    Store (0x07D1, OSYS)
                }

                If (_OSI ("Windows 2001 SP2"))
                {
                    Store (0x07D2, OSYS)
                }

                If (_OSI ("Windows 2006"))
                {
                    Store (0x07D6, OSYS)
                }

                If (_OSI ("Windows 2007"))
                {
                    Store (0x07D7, OSYS)
                }

                If (_OSI ("Windows 2008"))
                {
                    Store (0x07D8, OSYS)
                }

                If (_OSI ("Windows 2009"))
                {
                    Store (0x07D9, OSYS)
                }
            }
        }

        Method (NHPG, 0, Serialized)
        {
        }

        Method (NPME, 0, Serialized)
        {
        }
    }

    Scope (\)
    {
        Name (PICM, Zero)
        Method (OSDW, 0, NotSerialized)
        {
            If (LEqual (OSYS, 0x2710))
            {
                Return (One)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (PINI, 0, NotSerialized)
        {
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI ("Darwin"))
                {
                    Store (0x2710, OSYS)
                }
                Else
                {
                    If (_OSI ("Linux"))
                    {
                        Store (0x03E8, OSYS)
                    }
                    Else
                    {
                        If (_OSI ("Windows 2009"))
                        {
                            Store (0x07D9, OSYS)
                        }
                        Else
                        {
                            If (_OSI ("Windows 2006"))
                            {
                                Store (0x07D6, OSYS)
                            }
                            Else
                            {
                                If (_OSI ("Windows 2001 SP2"))
                                {
                                    Store (0x07D2, OSYS)
                                }
                                Else
                                {
                                    If (_OSI ("Windows 2001 SP1"))
                                    {
                                        Store (0x07D1, OSYS)
                                    }
                                    Else
                                    {
                                        If (_OSI ("Windows 2001"))
                                        {
                                            Store (0x07D1, OSYS)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Else
            {
                Store (0x07D0, OSYS)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))
            Name (_UID, One)
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00008000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED20000,         // Address Base
                    0x00020000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED90000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFF000000,         // Address Base
                    0x01000000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)
            {
                CreateDWordField (BUF0, 0x04, RBR0)
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                CreateDWordField (BUF0, 0x7C, TBR0)
                Store (TBAB, TBR0)
                CreateDWordField (BUF0, 0x80, TBLN)
                If (LEqual (TBAB, Zero))
                {
                    Store (Zero, TBLN)
                }

                CreateDWordField (BUF0, 0x10, MBR0)
                ShiftLeft (MHBR, 0x0F, MBR0)
                CreateDWordField (BUF0, 0x1C, DBR0)
                ShiftLeft (DIBR, 0x0C, DBR0)
                CreateDWordField (BUF0, 0x28, EBR0)
                ShiftLeft (EPBR, 0x0C, EBR0)
                CreateDWordField (BUF0, 0x34, XBR0)
                ShiftLeft (PXBR, 0x1A, XBR0)
                CreateDWordField (BUF0, 0x38, XSZ0)
                ShiftRight (0x10000000, PXSZ, XSZ0)
                Return (BUF0)
            }
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x1000, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
                    Offset (0x04), 
                    Offset (0x06), 
                    Offset (0x08), 
            TRP0,   8, 
                    Offset (0x0A), 
                    Offset (0x0B), 
                    Offset (0x0C), 
                    Offset (0x0D), 
                    Offset (0x0E), 
                    Offset (0x0F), 
                    Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, PMBS, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x20), 
                ,   2, 
            SPST,   1, 
                ,   22, 
            GS09,   1, 
                ,   3, 
            GS13,   1, 
                    Offset (0x28), 
                ,   25, 
            GE09,   1, 
                ,   3, 
            GE13,   1, 
                    Offset (0x42), 
                ,   1, 
            GPEC,   1, 
                    Offset (0x64), 
                ,   9, 
            SCIS,   1, 
                    Offset (0x66)
        }

        OperationRegion (GPIO, SystemIO, GPBS, 0x64)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GD00,   4, 
            GD04,   1, 
                ,   7, 
            GD12,   1, 
                    Offset (0x08), 
                    Offset (0x0C), 
                ,   3, 
            GP03,   1, 
            GP04,   1, 
            GP05,   1, 
            GP06,   1, 
                    Offset (0x0D), 
                ,   4, 
            GP12,   1, 
            GP13,   1, 
                    Offset (0x0E), 
            GP16,   1, 
            GP17,   1, 
            GP18,   1, 
            GP19,   1, 
            GP20,   1, 
            GP21,   1, 
            GP22,   1, 
            GP23,   1, 
                ,   3, 
            GP27,   1, 
            GP28,   1, 
                    Offset (0x10), 
                    Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
                    Offset (0x2C), 
                ,   3, 
            GI03,   1, 
            GI04,   1, 
            GI05,   1, 
            GI06,   1, 
                    Offset (0x2D), 
            GIV1,   8, 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GI40,   1, 
                ,   1, 
            GI42,   1, 
                ,   3, 
            GI46,   1, 
                    Offset (0x36), 
            GIO6,   8, 
                ,   3, 
            GI59,   1, 
                    Offset (0x38), 
                ,   4, 
            GP36,   1, 
                    Offset (0x39), 
            GP40,   1, 
                ,   1, 
            GP42,   1, 
                ,   2, 
            GP45,   1, 
            GP46,   1, 
                    Offset (0x3A), 
            GP48,   1, 
            GP49,   1, 
            GL06,   2, 
            GP52,   1, 
                ,   6, 
            GP59,   1, 
                    Offset (0x3C), 
                    Offset (0x40), 
            GU08,   8, 
            GU09,   8, 
            GU0A,   8, 
            GU0B,   8, 
            GIO8,   4, 
            GI68,   1, 
                    Offset (0x45), 
            GIO9,   8, 
            GIOA,   8, 
            GIOB,   8, 
            GP64,   1, 
                ,   3, 
            GP68,   1, 
            GL08,   3, 
            GL09,   8, 
            GL0A,   8, 
            GL0B,   8
        }

        OperationRegion (RCRB, SystemMemory, SRCB, 0x4000)
        Field (RCRB, DWordAcc, Lock, Preserve)
        {
                    Offset (0x1000), 
                    Offset (0x3000), 
                    Offset (0x3404), 
            HPAS,   2, 
                ,   5, 
            HPAE,   1, 
                    Offset (0x3418), 
                ,   1, 
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
                ,   2, 
            UH6D,   1, 
            UH1D,   1, 
            UH2D,   1, 
            UH3D,   1, 
            UH4D,   1, 
            UH5D,   1, 
                    Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1, 
            RP7D,   1, 
            RP8D,   1, 
                ,   4, 
            UH7D,   1
        }
    }

    Scope (_GPE)
    {
        Method (_L07, 0, NotSerialized)
        {
            Store (0x20, \_SB.PCI0.SBUS.HSTS)
        }

        Method (_L09, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.P0P2, 0x02)
            Notify (\_SB.PCI0.RP01.GIGE, 0x02)
            Notify (\_SB.PCI0.RP02.ARPT, 0x02)
            Notify (\_SB.PCI0.RP03, 0x02)
            Notify (\_SB.PCI0.RP04, 0x02)
        }

        Method (_L0D, 0, NotSerialized)
        {
            Notify (\_SB.PWRB, 0x02)
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
            If (OSDW ())
            {
                Notify (\_SB.PCI0.HDEF, 0x02)
            }
        }
    }

    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, Buffer (0x10)
                {
                    /* 0000 */    0xC6, 0xB7, 0xB5, 0xA0, 0x18, 0x13, 0x1C, 0x44, 
                    /* 0008 */    0xB0, 0xC9, 0xFE, 0x69, 0x5E, 0xAF, 0x94, 0x9B
                }))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                        {
                            0x03
                        }, Arg4)
                    Return (One)
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }

        Store (Buffer (One)
            {
                0x00
            }, Arg4)
        Return (Zero)
    }

    Name (_S0, Package (0x03)
    {
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x03)
    {
        0x06, 
        0x06, 
        Zero
    })
    Name (_S5, Package (0x03)
    {
        0x07, 
        0x07, 
        Zero
    })
    Method (_PTS, 1, NotSerialized)
    {
        Store (Zero, P80D)
        P8XH (Zero, Arg0)
        Store (Arg0, \_SB.PCI0.LPCB.EC.ECSS)
        If (LGreaterEqual (Arg0, 0x03))
        {
            Store (One, GP22)
        }

        If (OSDW ()) {}
        Else
        {
            Store (One, GP45)
        }

        If (LAnd (LNot (OSDW ()), LEqual (Arg0, 0x04)))
        {
            Store (Zero, \_SB.PCI0.LPCB.EC.EWLO)
            Store (One, \_SB.PCI0.PEG1.LDIS)
            Sleep (0x07D0)
            Store (Zero, GP23)
        }
    }

    Method (_WAK, 1, NotSerialized)
    {
        Store (One, UH2D)
        Store (One, UH3D)
        Store (One, UH4D)
        Store (One, UH6D)
        Store (One, UH7D)
        P8XH (Zero, Zero)
        Store (Zero, \_SB.PCI0.LPCB.EC.ECSS)
        If (OSDW ()) {}
        If (\_SB.PCI0.LPCB.EC.DSLP)
        {
            Store (\_SB.PCI0.LPCB.EC.ELSW, LIDS)
            Store (\_SB.PCI0.LPCB.EC.ELSW, \_SB.PCI0.IGPU.CLID)
            Store (\_SB.PCI0.LPCB.EC.EACP, PWRS)
            If (LNot (OSDW ()))
            {
                Store (Zero, \_SB.PCI0.LPCB.EC.LWE0)
                Store (Zero, \_SB.PCI0.LPCB.EC.LWE1)
                Store (Zero, \_SB.PCI0.LPCB.EC.LWE2)
                Store (Zero, \_SB.PCI0.LPCB.EC.LWE3)
            }
        }
        Else
        {
            Store (\_SB.PCI0.LPCB.EC.LSTE, LIDS)
            Store (\_SB.PCI0.LPCB.EC.LSTE, \_SB.PCI0.IGPU.CLID)
            Store (\_SB.PCI0.LPCB.EC.RPWR, PWRS)
        }

        If (LAnd (LNot (OSDW ()), LEqual (Arg0, 0x04)))
        {
            \_SB.PCI0.EHC2.HRST (Zero, \_SB.PCI0.EHC2.HRST (One, PNOT (), Return (Package (0x02)
                    {
                        Zero, 
                        Zero
                    })))
        }
    }
}

