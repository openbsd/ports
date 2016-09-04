# $OpenBSD: gcc4.port.mk,v 1.1.1.1 2016/09/04 16:20:14 pascal Exp $

MODGCC4_ARCHS ?=
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

.if ${MODGCC4_ARCHS:L} != ""
.  for _i in ${MODGCC4_ARCHS}
.    if !empty(MACHINE_ARCH:M${_i})
_MODGCC4_ARCH_USES = Yes
.    endif
.  endfor
.endif

COMPILER_VERSION ?= gcc2

MODGCC4STDCPP = estdc++
MODGCC4_CPPLIBDEP = lang/gcc/6,-libs>=6,<7
MODGCC4_CPPWANTLIB = estdc++>=18

_MODGCC4_LINKS =
.if ${_MODGCC4_ARCH_USES:L} == "yes"

.  if ${MODGCC4_LANGS:L:Mc}
BUILD_DEPENDS += lang/gcc/6>=6,<7
_MODGCC4_LINKS += egcc gcc egcc cc
.  endif

.  if ${MODGCC4_LANGS:L:Mc++}
BUILD_DEPENDS += lang/gcc/6,-c++>=6,<7
LIB_DEPENDS += ${MODGCC4_CPPLIBDEP}
WANTLIB += ${MODGCC4_CPPWANTLIB}
_MODGCC4_LINKS += eg++ g++ eg++ c++
.  endif

.  if ${MODGCC4_LANGS:L:Mfortran}
BUILD_DEPENDS += lang/gcc/6,-f95>=6,<7
WANTLIB += gfortran>=7
# XXX sync with Makefile
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
WANTLIB += quadmath
.endif
LIB_DEPENDS += lang/gcc/6,-libs>=6,<7
_MODGCC4_LINKS += egfortran gfortran
.  endif

.  if ${MODGCC4_LANGS:L:Mjava}
BUILD_DEPENDS += lang/gcc/6,-java>=6,<7
MODGCC4_GCJWANTLIB = gcj
MODGCC4_GCJLIBDEP = lang/gcc/6,-java>=6,<7
_MODGCC4_LINKS += egcj gcj egcjh gcjh egjar gjar egij gij
.  endif

#.  if ${MODGCC4_LANGS:L:Mgo}
#BUILD_DEPENDS += lang/gcc/6,-go>=6,<7
#WANTLIB += go
#LIB_DEPENDS += lang/gcc/6,-go>=6,<7
#_MODGCC4_LINKS += egccgo gccgo
#.  endif
.endif

.if !empty(_MODGCC4_LINKS)
.  if "${USE_CCACHE:L}" == "yes" && "${NO_CCACHE:L}" != "yes"
.    for _src _dest in ${_MODGCC4_LINKS}
MODGCC4_post-patch +=	rm -f ${WRKDIR}/bin/${_dest};
MODGCC4_post-patch +=	echo '\#!/bin/sh' >${WRKDIR}/bin/${_dest};
MODGCC4_post-patch +=	echo exec ccache ${LOCALBASE}/bin/${_src} \"\$$@\"
MODGCC4_post-patch +=	>>${WRKDIR}/bin/${_dest};
MODGCC4_post-patch +=	chmod +x ${WRKDIR}/bin/${_dest};
.    endfor
.  else
.    for _src _dest in ${_MODGCC4_LINKS}
MODGCC4_post-patch += ln -sf ${LOCALBASE}/bin/${_src} ${WRKDIR}/bin/${_dest};
.    endfor
.  endif
.endif

