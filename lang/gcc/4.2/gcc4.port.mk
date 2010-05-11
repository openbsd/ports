# $OpenBSD: gcc4.port.mk,v 1.9 2010/05/11 07:34:47 espie Exp $

MODGCC4_ARCHES?=
MODGCC4_LANGS?=
# Supported languages for now
_MODGCC4FORTRAN=fortran
_MODGCC4JAVA=	java

COMPILER_VERSION ?= gcc2

.if !${COMPILER_VERSION:L:Mgcc4*}
# only support these if not in base
_MODGCC4CC=	cc
_MODGCC4CXX=	c++
.else
_MODGCC4CC=	
_MODGCC4CXX=
.endif

.if ${MODGCC4_LANGS:L} != ${_MODGCC4JAVA}
# Always include support for this
# unless only java is needed
MODGCC4_LANGS+=	${_MODGCC4CC}
.endif

.if ${MODGCC4_ARCHES:L} != ""
.  for _i in ${MODGCC4_ARCHES}
.    if !empty(MACHINE_ARCH:M${_i})
.      for _j in ${MODGCC4_LANGS:L}
.        if !empty(_MODGCC4CC:L:M${_j})
BUILD_DEPENDS+=	::lang/gcc/4.2
MODGCC4_post-patch+= ln -sf ${LOCALBASE}/bin/eg${_MODGCC4CC} ${WRKDIR}/bin/g${_MODGCC4CC};
MODGCC4_post-patch+= ln -sf ${LOCALBASE}/bin/eg${_MODGCC4CC} ${WRKDIR}/bin/${_MODGCC4CC};
.        endif
.        if !empty(_MODGCC4CXX:L:M${_j})
BUILD_DEPENDS+=	::lang/gcc/4.2,-c++
LIB_DEPENDS+=	estdc++.>=7:libstdc++->=4.2,<4.3|libstdc++->=4.2v0,<4.3v0:lang/gcc/4.2,-estdc
MODGCC4_post-patch+= ln -sf ${LOCALBASE}/bin/e${_MODGCC4CXX} ${WRKDIR}/bin/g++;
MODGCC4_post-patch+= ln -sf ${LOCALBASE}/bin/e${_MODGCC4CXX} ${WRKDIR}/bin/${_MODGCC4CXX};
.        else
.          if ${MODGCC4_LANGS:L:Mc++}
WANTLIB += stdc++.>=50.0
.          endif
.        endif
.        if !empty(_MODGCC4FORTRAN:L:M${_j})
BUILD_DEPENDS+=	::lang/gcc/4.2,-f95
LIB_DEPENDS+=	gfortran.>=2:g95->=4.2,<4.3|g95->=4.2v0,<4.3v0:lang/gcc/4.2,-f95
MODGCC4_post-patch+= ln -sf ${LOCALBASE}/bin/eg${_MODGCC4FORTRAN} ${WRKDIR}/bin/g${_MODGCC4FORTRAN};
.	 endif
.        if !empty(_MODGCC4JAVA:L:M${_j})
BUILD_DEPENDS+=	::lang/gcc/4.2,-java,java
MODGCC4_post-patch+= ln -sf ${LOCALBASE}/bin/egcj ${WRKDIR}/bin/gcj;
MODGCC4_post-patch+= ln -sf ${LOCALBASE}/bin/egcjh ${WRKDIR}/bin/gcjh;
MODGCC4_post-patch+= ln -sf ${LOCALBASE}/bin/ejar ${WRKDIR}/bin/gjar;
MODGCC4_post-patch+= ln -sf ${LOCALBASE}/bin/egij ${WRKDIR}/bin/gij;
.	 endif
.      endfor
.    endif
.  endfor
.endif
