/*	$OpenBSD: vmm-dsdt.asl,v 1.1 2026/09/17 22:17:14 ajacoutot Exp $ */

/*
 * Copyright (c) 2026 Mike Larkin <mlarkin@openbsd.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */

DefinitionBlock ("", "DSDT", 2, "VMD   ", "VMD DSDT", 1)
{
	Scope (_SB)
	{
		Device (PCI0)
		{
			Name (_HID, EisaId ("PNP0A08"))
			Name (_CID, EisaId ("PNP0A03"))
			Name (_SEG, Zero)
			Name (_BBN, Zero)
			Name (_UID, Zero)
			Name (_CRS, ResourceTemplate ()
			{
				WordBusNumber (ResourceProducer, MinFixed, MaxFixed,
				    PosDecode, 0, 0, 0x00FF, 0, 0x0100)
				IO (Decode16, 0x0CF8, 0x0CF8, 1, 8)
				WordIO (ResourceProducer, MinFixed, MaxFixed,
				    PosDecode, EntireRange, 0, 0x1000, 0xFFFF, 0,
				    0xF000, , , , TypeStatic)
				DWordMemory (ResourceProducer, PosDecode, MinFixed,
				    MaxFixed, NonCacheable, ReadWrite, 0, 0xF0000000,
				    0xFFBFFFFF, 0, 0x0FC00000, , , ,
				    AddressRangeMemory, TypeStatic)
			})

			/*
			 * vmd assigns one legacy INTx line to each interrupting
			 * PCI device, in slot order.  All emulated devices use INTA.
			 * Source Zero denotes a fixed Global System Interrupt.
			 */
			Name (_PRT, Package (10)
			{
				Package (4) { 0x0001FFFF, Zero, Zero, 3 },
				Package (4) { 0x0002FFFF, Zero, Zero, 5 },
				Package (4) { 0x0003FFFF, Zero, Zero, 6 },
				Package (4) { 0x0004FFFF, Zero, Zero, 7 },
				Package (4) { 0x0005FFFF, Zero, Zero, 9 },
				Package (4) { 0x0006FFFF, Zero, Zero, 10 },
				Package (4) { 0x0007FFFF, Zero, Zero, 11 },
				Package (4) { 0x0008FFFF, Zero, Zero, 12 },
				Package (4) { 0x0009FFFF, Zero, Zero, 14 },
				Package (4) { 0x000AFFFF, Zero, Zero, 15 }
			})
		}

		Device (RTC)
		{
			Name (_HID, EisaId ("PNP0B00"))
			Name (_CRS, ResourceTemplate ()
			{
				IO (Decode16, 0x0070, 0x0070, 0, 2)
			})
		}

		Device (SPKR)
		{
			Name (_HID, EisaId ("PNP0800"))
			Name (_CRS, ResourceTemplate ()
			{
				IO (Decode16, 0x0061, 0x0061, 0, 1)
			})
		}

		Device (COM1)
		{
			Name (_HID, EisaId ("PNP0501"))
			Name (_UID, One)
			Name (_CRS, ResourceTemplate ()
			{
				IO (Decode16, 0x03F8, 0x03F8, 1, 8)
				IRQNoFlags () { 4 }
			})
		}

		Device (PWRB)
		{
			Name (_HID, EisaId ("PNP0C0C"))
			Method (_STA, 0, NotSerialized)
			{
				Return (0x0B)
			}
		}

		Device (SLPB)
		{
			Name (_HID, EisaId ("PNP0C0E"))
			Method (_STA, 0, NotSerialized)
			{
				Return (0x0B)
			}
		}
	}

	/* PM1A SLP_TYP 5 selects the power-off state in vmd. */
	Name (_S5, Package (4)
	{
		5,
		5,
		Zero,
		Zero
	})

	Name (VMSI, Package (2)
	{
		"OpenBSD vmd Virtual Machine",
		"vmd"
	})
}

