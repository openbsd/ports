# $OpenBSD: arch-defines.mk,v 1.28 2016/09/01 09:26:56 jasper Exp $
#
# ex:ts=4 sw=4 filetype=make:
#
#	derived from bsd.port.mk in 2011
#	This file is in the public domain.
#	It is actually a part of bsd.port.mk that won't be included manually.
#

# architecture constants

ARCH ?!= uname -m

ALL_ARCHS = alpha amd64 arm aviion hppa i386 landisk loongson \
	luna88k m88k macppc mips64 mips64el octeon sgi socppc \
	sparc64 zaurus
# not all powerpc have apm(4), hence the use of macppc
APM_ARCHS = amd64 arm i386 loongson macppc sparc64 zaurus
BE_ARCHS = hppa m88k mips64 powerpc sparc64
LE_ARCHS = alpha amd64 arm i386 mips64el sh
LP64_ARCHS = alpha amd64 sparc64 mips64 mips64el
GCC4_ARCHS = alpha amd64 arm armv7 i386 hppa landisk loongson \
	macppc mips64 mips64el octeon powerpc sgi sh socppc sparc64 zaurus
GCC3_ARCHS = aviion luna88k m88k
# XXX easier for ports that depend on mono
MONO_ARCHS = amd64 i386
LLVM_ARCHS = amd64 i386 powerpc mips64 mips64el sparc64
OCAML_NATIVE_ARCHS = i386 amd64
OCAML_NATIVE_DYNLINK_ARCHS = i386 amd64
GO_ARCHS = amd64 i386


.for PROP in ALL APM BE LE LP64 GCC4 GCC3 MONO LLVM \
                           OCAML_NATIVE OCAML_NATIVE_DYNLINK GO
.  for A B in ${MACHINE_ARCH} ${ARCH}
.    if !empty(${PROP}_ARCHS:M$A) || !empty(${PROP}_ARCHS:M$B)
PROPERTIES += ${PROP:L}
.    endif
.  endfor
.endfor
