# $OpenBSD: gcc3.port.mk,v 1.3 2003/02/09 23:10:11 lebel Exp $

MODGCC3_ARCHES?=
# Supported languages for now
_MODGCC3CC=	cc
_MODGCC3CXX=	c++
_MODGCC3G77=	g77
# Always include support for this
MODGCC3_LANGS+=	${_MODGCC3CC}

.if ${MODGCC3_ARCHES:L} != ""
.  for _i in ${MODGCC3_ARCHES}
.    if !empty(MACHINE_ARCH:M${_i})
BUILD_DEPENDS+=	::lang/egcs/stable
.      for _j in ${MODGCC3_LANGS:L}
.        if !empty(_MODGCC3CC:L:M${_j})
MODGCC3_post-patch+= ln -s ${LOCALBASE}/bin/eg${_MODGCC3CC} ${WRKDIR}/bin/g${_MODGCC3CC};
MODGCC3_post-patch+= ln -s ${LOCALBASE}/bin/eg${_MODGCC3CC} ${WRKDIR}/bin/${_MODGCC3CC};
.        endif
.        if !empty(_MODGCC3CXX:L:M${_j})
BUILD_DEPENDS+=	::lang/egcs/stable,-c++
LIB_DEPENDS+=	estdc++.5::lang/egcs/stable,-estdc
MODGCC3_post-patch+= ln -s ${LOCALBASE}/bin/e${_MODGCC3CXX} ${WRKDIR}/bin/g++;
MODGCC3_post-patch+= ln -s ${LOCALBASE}/bin/e${_MODGCC3CXX} ${WRKDIR}/bin/${_MODGCC3CXX};
.        endif
.        if !empty(_MODGCC3G77:L:M${_j})
BUILD_DEPENDS+=	::lang/egcs/stable,-g77
MODGCC3_post-patch+= ln -s ${LOCALBASE}/bin/e${_MODGCC3G77} ${WRKDIR}/bin/${_MODGCC3G77};
.	 endif
.      endfor
.    endif
.  endfor
.endif
