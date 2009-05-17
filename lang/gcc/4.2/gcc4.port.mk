# $OpenBSD: gcc4.port.mk,v 1.2 2009/05/17 09:39:58 sthen Exp $

MODGCC4_ARCHES?=
# Supported languages for now
_MODGCC4CC=	cc
_MODGCC4CXX=	c++
_MODGCC4G77=	g77
# Always include support for this
MODGCC4_LANGS+=	${_MODGCC4CC}

.if ${MODGCC4_ARCHES:L} != ""
.  for _i in ${MODGCC4_ARCHES}
.    if !empty(MACHINE_ARCH:M${_i})
BUILD_DEPENDS+=	::lang/gcc/4.2
.      for _j in ${MODGCC4_LANGS:L}
.        if !empty(_MODGCC4CC:L:M${_j})
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
.      endfor
.    endif
.  endfor
.endif
