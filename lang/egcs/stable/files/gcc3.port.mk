# $OpenBSD: gcc3.port.mk,v 1.2 2002/11/12 21:14:24 pvalchev Exp $

MODGCC3_ARCHES?=
# Supported languages for now
_MODGCC3CC=	cc
_MODGCC3CXX=	c++
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
.      endfor
.    endif
.  endfor
.endif
