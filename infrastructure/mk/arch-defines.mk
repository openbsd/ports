# $OpenBSD: arch-defines.mk,v 1.69 2019/11/09 15:08:09 espie Exp $
#
# ex:ts=4 sw=4 filetype=make:
#
#	derived from bsd.port.mk in 2011
#	This file is in the public domain.
#	It is actually a part of bsd.port.mk that won't be included manually.
#

# architecture constants

ARCH ?!= uname -m

ALL_ARCHS = aarch64 alpha amd64 arm arm64 armv7 hppa i386 landisk loongson \
	luna88k m88k macppc mips64 mips64el octeon sgi sh sparc64
# not all powerpc have apm(4), hence the use of macppc
APM_ARCHS = arm64 amd64 i386 loongson macppc sparc64
BE_ARCHS = hppa m88k mips64 powerpc sparc64
LE_ARCHS = aarch64 alpha amd64 arm i386 mips64el sh
LP64_ARCHS = aarch64 alpha amd64 sparc64 mips64 mips64el
GCC4_ARCHS = alpha hppa mips64el powerpc sh sparc64
GCC3_ARCHS = m88k
# XXX easier for ports that depend on mono
MONO_ARCHS = amd64 i386
OCAML_NATIVE_ARCHS = i386 amd64
OCAML_NATIVE_DYNLINK_ARCHS = i386 amd64
GO_ARCHS = aarch64 amd64 arm arm64 armv7 i386
RUST_ARCHS = aarch64 amd64 i386 sparc64

# arches where the base compiler is clang
CLANG_ARCHS = aarch64 amd64 arm i386 mips64
# arches using LLVM's linker (ld.lld); others use binutils' ld.bfd
LLD_ARCHS = aarch64 amd64 arm i386

# arches where ports devel/llvm builds - populates llvm ONLY_FOR_ARCHS
# as well as available for PROPERTIES checks.
LLVM_ARCHS = aarch64 amd64 arm i386 mips64 mips64el powerpc sparc64
# arches where ports-gcc >4.9 exists.  To be used again for modules
GCC49_ARCHS = aarch64 alpha amd64 arm hppa i386 mips64 mips64el powerpc sparc64

# arches where there is a C++11 compiler, either clang in base or ports-gcc
CXX11_ARCHS = ${CLANG_ARCHS} ${GCC49_ARCHS}
DEBUGINFO_ARCHS = amd64

.for PROP in ALL APM BE LE LP64 CLANG GCC4 GCC3 GCC49 MONO LLVM \
                     CXX11 OCAML_NATIVE OCAML_NATIVE_DYNLINK GO \
                     LLD RUST DEBUGINFO
.  for A B in ${MACHINE_ARCH} ${ARCH}
.    if !empty(${PROP}_ARCHS:M$A) || !empty(${PROP}_ARCHS:M$B)
PROPERTIES += ${PROP:L}
.    endif
.  endfor
.endfor

.if !${PROPERTIES:Mdebuginfo}
DEBUG_PACKAGES =
DEBUG_FILES =
.endif

.if ${PROPERTIES:Mclang}
LIBCXX = c++ c++abi pthread
LIBECXX = c++ c++abi pthread
.else
LIBCXX = stdc++ pthread
LIBECXX = estdc++>=17 pthread
.endif

.if ${PROPERTIES:Mlld}
# see llvm/tools/lld/ELF/Driver.cpp
.  for A in aarch64.aarch64elf amd64.elf_amd64 arm.armelf i386.elf_i386 \
            mips64.elf64btsmip mips64el.elf64ltsmip powerpc.elf32ppc \
            sparc64.elf64_sparc
.    if ${MACHINE_ARCH} == ${A:R}
LLD_EMUL = -m${A:E}
.    endif
.  endfor
.else
LLD_EMUL =
.endif

# system version wide specifics
_SYSTEM_VERSION = 1
_SYSTEM_VERSION-aarch64 = 3
_SYSTEM_VERSION-amd64 = 4
_SYSTEM_VERSION-arm = 3
_SYSTEM_VERSION-i386 = 2
_SYSTEM_VERSION-mips64 = 1
_SYSTEM_VERSION-${MACHINE_ARCH} ?= 0
_SYSTEM_VERSION-${ARCH} ?= 0

# @version = ${_SYSTEM_VERSION} + ${_SYSTEM_VERSION-${MACHINE_ARCH}}
_PKG_ARGS_VERSION += -V ${_SYSTEM_VERSION} -V ${_SYSTEM_VERSION-${MACHINE_ARCH}}
.if ${ARCH} != ${MACHINE_ARCH}
_PKG_ARGS_VERSION += -V ${_SYSTEM_VERSION-${ARCH}}
.endif

