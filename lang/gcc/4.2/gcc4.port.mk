# $OpenBSD: gcc4.port.mk,v 1.10 2010/06/27 21:37:24 espie Exp $

MODGCC4_ARCHES?=
MODGCC4_LANGS?=


.if ${MODGCC4_LANGS:L} != "java" && !${MODGCC4_LANGS:L:Mc}
# Always include support for this
# unless only java is needed
MODGCC4_LANGS+=	c
.endif

_MODGCC4_OKAY = c c++ java fortran
.for _l in ${MODGCC4_LANGS:L}
.  if !${_MODGCC4_OKAY:M${_l}}
ERRORS += "Fatal: unknown language ${_l}"
.  endif
.endfor

_MODGCC4_ARCH_USES = No

.if ${MODGCC4_ARCHES:L} != ""
.  for _i in ${MODGCC4_ARCHES}
.    if !empty(MACHINE_ARCH:M${_i})
_MODGCC4_ARCH_USES = Yes
.    endif
.  endfor
.endif

COMPILER_VERSION ?= gcc2

_MODGCC4_LINKS =
.if ${_MODGCC4_ARCH_USES:L} == "yes"

.  if ${MODGCC4_LANGS:L:Mc} && ${COMPILER_VERSION:L:Ngcc4*}
BUILD_DEPENDS += ::lang/gcc/4.2
_MODGCC4_LINKS += egcc gcc egcc cc
.  endif

.  if ${MODGCC4_LANGS:L:Mc++}
.    if ${COMPILER_VERSION:L:Mgcc4*}
MODGCC4STDCPP = stdc++
WANTLIB += stdc++.>=50.0
.    else
BUILD_DEPENDS += ::lang/gcc/4.2,-c++
MODGCC4STDCPP = estdc++
LIB_DEPENDS += estdc++.>=7:libstdc++->=4.2,<4.3|libstdc++->=4.2v0,<4.3v0:lang/gcc/4.2,-estdc
_MODGCC4_LINKS += eg++ g++ eg++ c++
.    endif
.  endif

.  if ${MODGCC4_LANGS:L:Mfortran}
BUILD_DEPENDS += ::lang/gcc/4.2,-f95
LIB_DEPENDS += gfortran.>=2:g95->=4.2,<4.3|g95->=4.2v0,<4.3v0:lang/gcc/4.2,-f95
_MODGCC4_LINKS += egfortran gfortran
.  endif

.  if ${MODGCC4_LANGS:L:Mjava}
BUILD_DEPENDS += ::lang/gcc/4.2,-java,java
_MODGCC4_LINKS += egcj gcj egcjh gcjh ejar gjar egij gij
.  endif

.endif

.if !empty(_MODGCC4_LINKS)
.  for _src _dest in ${_MODGCC4_LINKS}
MODGCC4_post-patch += ln -sf ${LOCALBASE}/bin/${_src} ${WRKDIR}/bin/${_dest};
.  endfor
.endif

