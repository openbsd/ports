# $OpenBSD: gcc4.port.mk,v 1.4 2009/06/17 00:47:06 kurt Exp $

MODGCC4_ARCHES?=
MODGCC4_LANGS?=
# Supported languages for now
_MODGCC4CC=	cc
_MODGCC4CXX=	c++
_MODGCC4G77=	g77
_MODGCC4JAVA=	java

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
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/eg${_MODGCC4CC} ${WRKDIR}/bin/g${_MODGCC4CC};
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/eg${_MODGCC4CC} ${WRKDIR}/bin/${_MODGCC4CC};
.        endif
.        if !empty(_MODGCC4CXX:L:M${_j})
BUILD_DEPENDS+=	::lang/gcc/4.2,-c++
LIB_DEPENDS+=	estdc++.>=7:libstdc++->=4.2,<4.3:lang/gcc/4.2,-estdc
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/e${_MODGCC4CXX} ${WRKDIR}/bin/g++;
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/e${_MODGCC4CXX} ${WRKDIR}/bin/${_MODGCC4CXX};
.        endif
.        if !empty(_MODGCC4G77:L:M${_j})
BUILD_DEPENDS+=	::lang/gcc/4.2,-g77
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/e${_MODGCC4G77} ${WRKDIR}/bin/f77;
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/e${_MODGCC4G77} ${WRKDIR}/bin/${_MODGCC4G77};
.	 endif
.        if !empty(_MODGCC4JAVA:L:M${_j})
BUILD_DEPENDS+=	::lang/gcc/4.2,-java,java
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/egcj ${WRKDIR}/bin/gcj;
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/egcjh ${WRKDIR}/bin/gcjh;
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/ejar ${WRKDIR}/bin/gjar;
MODGCC4_post-patch+= ln -s ${LOCALBASE}/bin/egij ${WRKDIR}/bin/gij;
.	 endif
.      endfor
.    endif
.  endfor
.endif
