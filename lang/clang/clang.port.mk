# $OpenBSD: clang.port.mk,v 1.34 2019/09/08 10:40:39 jca Exp $

MODCLANG_VERSION=	8.0.1

MODCLANG_ARCHS ?= ${LLVM_ARCHS}
MODCLANG_LANGS ?=

.if !${MODCLANG_LANGS:L:Mc}
# Always include support for this
MODCLANG_LANGS += c
.endif

_MODCLANG_OKAY = c c++
.for _l in ${MODCLANG_LANGS:L}
.  if !${_MODCLANG_OKAY:M${_l}}
ERRORS += "Fatal: unknown language ${_l}"
.  endif
.endfor

_MODCLANG_ARCH_USES = No

.for _i in ${MODCLANG_ARCHS}
.  if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_USES = Yes
.  endif
.endfor

_MODCLANG_ARCH_CLANG = No

.for _i in ${CLANG_ARCHS}
.  if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_CLANG = Yes
.  endif
.endfor

.if ${_MODCLANG_ARCH_USES:L} == "yes"

BUILD_DEPENDS += devel/llvm>=${MODCLANG_VERSION}
COMPILER_LINKS = gcc ${LOCALBASE}/bin/clang cc ${LOCALBASE}/bin/clang \
	clang ${LOCALBASE}/bin/clang

.  if ${MODCLANG_LANGS:L:Mc++}
COMPILER_LINKS += g++ ${LOCALBASE}/bin/clang++ c++ ${LOCALBASE}/bin/clang++ \
	clang++ ${LOCALBASE}/bin/clang++

.    if ${_MODCLANG_ARCH_CLANG:L} == "no"
# uses libestdc++
MODULES += gcc4
MODCLANG_CPPLIBDEP = ${MODGCC4_CPPLIBDEP}
LIB_DEPENDS += ${MODCLANG_CPPLIBDEP}
MODCLANG_CPPWANTLIB = ${MODGCC4_CPPWANTLIB}
WANTLIB += ${MODCLANG_CPPWANTLIB}
.    else
# uses libc++
MODCLANG_CPPLIBDEP =
MODCLANG_CPPWANTLIB = c++ c++abi pthread
WANTLIB += ${MODCLANG_CPPWANTLIB}
.    endif
.  endif
.endif

SUBST_VARS+=	MODCLANG_VERSION
