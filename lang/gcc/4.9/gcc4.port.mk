# $OpenBSD: gcc4.port.mk,v 1.9 2017/08/21 09:12:47 espie Exp $

MODGCC4_ARCHS ?= ${GCC49_ARCHS}
MODGCC4_LANGS ?=


.if ${MODGCC4_LANGS:L} != "java" && !${MODGCC4_LANGS:L:Mc}
# Always include support for this
# unless only java is needed
MODGCC4_LANGS +=	c
.endif

_MODGCC4_OKAY = c c++ java fortran
.for _l in ${MODGCC4_LANGS:L}
.  if !${_MODGCC4_OKAY:M${_l}}
ERRORS += "Fatal: unknown language ${_l}"
.  endif
.endfor

_MODGCC4_ARCH_USES = No

.for _i in ${MODGCC4_ARCHS}
.  if !empty(MACHINE_ARCH:M${_i})
_MODGCC4_ARCH_USES = Yes
.  endif
.endfor

COMPILER_VERSION ?= gcc2

_MODGCC4_LINKS =
MODGCC4STDCPP = estdc++
MODGCC4_CPPLIBDEP = lang/gcc/4.9,-libs>=4.9,<4.10
MODGCC4_CPPDEP =    lang/gcc/4.9,-c++>=4.9,<4.10
MODGCC4_CPPWANTLIB = estdc++>=17
MODGCC4_ATOMICWANTLIB = atomic

.if ${_MODGCC4_ARCH_USES:L} == "yes"

.  if ${MODGCC4_LANGS:L:Mc}
BUILD_DEPENDS += lang/gcc/4.9>=4.9,<4.10
COMPILER_LINKS += gcc ${LOCALBASE}/bin/egcc cc ${LOCALBASE}/bin/egcc
.  endif

.  if ${MODGCC4_LANGS:L:Mc++}
BUILD_DEPENDS += ${MODGCC4_CPPDEP}
LIB_DEPENDS += ${MODGCC4_CPPLIBDEP}
WANTLIB += ${MODGCC4_CPPWANTLIB}
COMPILER_LINKS += c++ ${LOCALBASE}/bin/eg++ g++ ${LOCALBASE}/bin/eg++
.  endif

.  if ${MODGCC4_LANGS:L:Mfortran}
BUILD_DEPENDS += lang/gcc/4.9,-f95>=4.9,<4.10
WANTLIB += gfortran>=3
# XXX sync with Makefile
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
WANTLIB += quadmath
.endif
LIB_DEPENDS += lang/gcc/4.9,-libs>=4.9,<4.10
COMPILER_LINKS += gfortran ${LOCALBASE}/bin/egfortran
.  endif

.  if ${MODGCC4_LANGS:L:Mjava}
BUILD_DEPENDS += lang/gcc/4.9,-java>=4.9,<4.10
MODGCC4_GCJWANTLIB = gcj
MODGCC4_GCJLIBDEP = lang/gcc/4.9,-java>=4.9,<4.10
COMPILER_LINKS += gcj ${LOCALBASE}/bin/egcj
_MODGCC4_LINKS += gcjh gjar gij
.  endif

#.  if ${MODGCC4_LANGS:L:Mgo}
#BUILD_DEPENDS += lang/gcc/4.9,-go>=4.9,<4.10
#WANTLIB += go
#LIB_DEPENDS += lang/gcc/4.9,-go>=4.9,<4.10
#COMPILER_LINKS += gccgo ${LOCALBASE}/bin/egccgo
#.  endif
.endif

.if !empty(_MODGCC4_LINKS)
.  for _src in ${_MODGCC4_LINKS}
MODGCC4_post-patch += ln -sf ${LOCALBASE}/bin/e${_src} ${WRKDIR}/bin/${_src};
.  endfor
.endif
