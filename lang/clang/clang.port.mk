# $OpenBSD: clang.port.mk,v 1.23 2017/07/14 17:14:03 sthen Exp $

MODCLANG_VERSION=	4.0.1

MODCLANG_ARCHS ?=
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

.if ${MODCLANG_ARCHS:L} != ""
.  for _i in ${MODCLANG_ARCHS}
.    if !empty(MACHINE_ARCH:M${_i})
_MODCLANG_ARCH_USES = Yes
.    endif
.  endfor
.endif

.if ${_MODCLANG_ARCH_USES:L} == "yes"

BUILD_DEPENDS += devel/llvm>=${MODCLANG_VERSION}
COMPILER_LINKS = gcc ${LOCALBASE}/bin/clang cc ${LOCALBASE}/bin/clang

.  if ${MODCLANG_LANGS:L:Mc++}
COMPILER_LINKS += g++ ${LOCALBASE}/bin/clang++ c++ ${LOCALBASE}/bin/clang++
# uses libestdc++
MODULES += gcc4
MODCLANG_CPPLIBDEP = ${MODGCC4_CPPLIBDEP}
LIB_DEPENDS += ${MODCLANG_CPPLIBDEP}
MODCLANG_CPPWANTLIB = ${MODGCC4_CPPWANTLIB}
WANTLIB += ${MODCLANG_CPPWANTLIB}
.  endif
.endif

SUBST_VARS+=	MODCLANG_VERSION
