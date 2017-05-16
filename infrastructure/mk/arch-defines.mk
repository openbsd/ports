# $OpenBSD: arch-defines.mk,v 1.39 2017/05/16 13:38:36 espie Exp $
#
# ex:ts=4 sw=4 filetype=make:
#
#	derived from bsd.port.mk in 2011
#	This file is in the public domain.
#	It is actually a part of bsd.port.mk that won't be included manually.
#

# architecture constants

ARCH ?!= uname -m

ALL_ARCHS = aarch64 alpha amd64 arm hppa i386 landisk loongson luna88k \
	m88k macppc mips64 mips64el octeon sgi socppc sparc64
# not all powerpc have apm(4), hence the use of macppc
APM_ARCHS = amd64 i386 loongson macppc sparc64
BE_ARCHS = hppa m88k mips64 powerpc sparc64
LE_ARCHS = aarch64 alpha amd64 arm i386 mips64el sh
LP64_ARCHS = aarch64 alpha amd64 sparc64 mips64 mips64el
GCC4_ARCHS = alpha amd64 arm armv7 i386 hppa landisk loongson \
	macppc mips64 mips64el octeon powerpc sgi sh socppc sparc64
GCC3_ARCHS = luna88k m88k
# XXX easier for ports that depend on mono
MONO_ARCHS = amd64 i386
OCAML_NATIVE_ARCHS = i386 amd64
OCAML_NATIVE_DYNLINK_ARCHS = i386 amd64
GO_ARCHS = amd64 i386

# arches where the base compiler is clang
CLANG_ARCHS = aarch64

# arches where ports devel/llvm builds - populates llvm ONLY_FOR_ARCHS
# as well as available for PROPERTIES checks.  XXX list currently inaccurate
LLVM_ARCHS = aarch64 amd64 arm i386 powerpc mips64 mips64el sparc64

# arches where there is a C++11 compiler, either clang in base or gcc4
CXX11_ARCHS = aarch64 amd64 arm i386 hppa powerpc mips64 mips64el sparc64

.for PROP in ALL APM BE LE LP64 CLANG GCC4 GCC3 MONO LLVM \
                     CXX11 OCAML_NATIVE OCAML_NATIVE_DYNLINK GO
.  for A B in ${MACHINE_ARCH} ${ARCH}
.    if !empty(${PROP}_ARCHS:M$A) || !empty(${PROP}_ARCHS:M$B)
PROPERTIES += ${PROP:L}
.    endif
.  endfor
.endfor

.if ${PROPERTIES:Mclang}
LIBCXX = c++ c++abi pthread
LIBECXX = c++ c++abi pthread
.else
LIBCXX = stdc++
LIBECXX = estdc++>=17
.endif
