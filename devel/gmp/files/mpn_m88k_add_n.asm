dnl mc88100 mpn_add_n -- Add two limb vectors of the same length > 0 and store
dnl sum in a third limb vector.

dnl Copyright 1992, 1994, 1995, 2000 Free Software Foundation, Inc.

dnl This file is part of the GNU MP Library.

dnl The GNU MP Library is free software; you can redistribute it and/or modify
dnl it under the terms of the GNU Lesser General Public License as published by
dnl the Free Software Foundation; either version 3 of the License, or (at your
dnl option) any later version.

dnl The GNU MP Library is distributed in the hope that it will be useful, but
dnl WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
dnl or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public
dnl License for more details.

dnl You should have received a copy of the GNU Lesser General Public License
dnl along with the GNU MP Library.  If not, see http://www.gnu.org/licenses/.

include(`../config.m4')


C INPUT PARAMETERS
C res_ptr	%r2
C s1_ptr	%r3
C s2_ptr	%r4
C size		%r5

C This code has been optimized to run one instruction per clock, avoiding
C load stalls and writeback contention.  As a result, the instruction
C order is not always natural.

C The speed is about 4.6 clocks/limb + 18 clocks/limb-vector on an 88100,
C but on the 88110, it seems to run much slower, 6.6 clocks/limb.

ASM_START()
PROLOGUE(mpn_add_n)
	ld	%r6,%r3,0		C read first limb from s1_ptr
	extu	%r10,%r5,3
	ld	%r7,%r4,0		C read first limb from s2_ptr

	subu.co	%r5,%r0,%r5		C (clear carry as side effect)
	mak	%r5,%r5,3<4>
	bcnd	eq0,%r5,Lzero

ifdef(`PIC',`
	or	%r9,%r0,%r25
	or	%r11,%r0,%r1
	or.u	%r25,%r0,%hi16(.Lpic#abdiff)
	bsr.n	.Lpic
	 or	%r25,%r25,%lo16(.Lpic#abdiff)
.Lpic:	add	%r25,%r25,%r1
	or	%r1,%r0,%r11
	or.u	%r11,%r0,%hi16(Lbase#got_rel)
	or	%r11,%r11,%lo16(Lbase#got_rel)
	ld	%r12,%r25,%r11
	or	%r25,%r0,%r9
',`
	or	%r12,%r0,%lo16(Lbase)
	or.u	%r12,%r12,%hi16(Lbase)
')
	addu	%r12,%r12,%r5		C %r12 is address for entering in loop

	extu	%r5,%r5,2		C divide by 4
	subu	%r2,%r2,%r5		C adjust res_ptr
	subu	%r3,%r3,%r5		C adjust s1_ptr
	subu	%r4,%r4,%r5		C adjust s2_ptr

	or	%r8,%r6,%r0

	jmp.n	%r12
	 or	%r9,%r7,%r0

Loop:	addu	%r3,%r3,32
	st	%r8,%r2,28
	addu	%r4,%r4,32
	ld	%r6,%r3,0
	addu	%r2,%r2,32
	ld	%r7,%r4,0
Lzero:	subu	%r10,%r10,1		C add 0 + 8r limbs (adj loop cnt)
Lbase:	ld	%r8,%r3,4
	addu.cio %r6,%r6,%r7
	ld	%r9,%r4,4
	st	%r6,%r2,0
	ld	%r6,%r3,8		C add 7 + 8r limbs
	addu.cio %r8,%r8,%r9
	ld	%r7,%r4,8
	st	%r8,%r2,4
	ld	%r8,%r3,12		C add 6 + 8r limbs
	addu.cio %r6,%r6,%r7
	ld	%r9,%r4,12
	st	%r6,%r2,8
	ld	%r6,%r3,16		C add 5 + 8r limbs
	addu.cio %r8,%r8,%r9
	ld	%r7,%r4,16
	st	%r8,%r2,12
	ld	%r8,%r3,20		C add 4 + 8r limbs
	addu.cio %r6,%r6,%r7
	ld	%r9,%r4,20
	st	%r6,%r2,16
	ld	%r6,%r3,24		C add 3 + 8r limbs
	addu.cio %r8,%r8,%r9
	ld	%r7,%r4,24
	st	%r8,%r2,20
	ld	%r8,%r3,28		C add 2 + 8r limbs
	addu.cio %r6,%r6,%r7
	ld	%r9,%r4,28
	st	%r6,%r2,24
	bcnd.n	ne0,%r10,Loop		C add 1 + 8r limbs
	 addu.cio %r8,%r8,%r9

	st	%r8,%r2,28		C store most significant limb

	jmp.n	 %r1
	 addu.ci %r2,%r0,%r0		C return carry-out from most sign. limb
EPILOGUE(mpn_add_n)
