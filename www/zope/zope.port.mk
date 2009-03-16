# $OpenBSD: zope.port.mk,v 1.6 2009/03/16 10:52:08 sthen Exp $
#
#	zope.port.mk - Xavier Santolaria <xavier@santolaria.net>
#	This file is in the public domain.

MODZOPE_VERSION?=	2.10
MODZOPE_PYTHON_VERSION=	2.4

.if ${MODZOPE_PYTHON_VERSION} == 2.4
MODZOPE_PY_VSPEC = >=${MODZOPE_PYTHON_VERSION},<2.5
.elif ${MODZOPE_PYTHON_VERSION} == 2.5
MODZOPE_PY_VSPEC = >=${MODZOPE_PYTHON_VERSION},<2.6
.endif

BUILD_DEPENDS+= :python-${MODZOPE_PY_VSPEC}:lang/python/${MODZOPE_PYTHON_VERSION}
RUN_DEPENDS+=	::www/zope/${MODZOPE_VERSION}

MODZOPE_HOME=		${PREFIX}/lib/zope
MODZOPE_PRODUCTSDIR=	${MODZOPE_HOME}/lib/python/Products

PYTHON_BIN=		${LOCALBASE}/bin/python${MODZOPE_PYTHON_VERSION}
PYTHON_LIBDIR=		${LOCALBASE}/lib/python${MODZOPE_PYTHON_VERSION}
PYTHON_INCLUDEDIR=	${LOCALBASE}/include/python${MODZOPE_PYTHON_VERSION}

NO_REGRESS=	Yes

# dirty way to do it with no modifications in bsd.port.mk
.if !target(do-build)
do-build:
	${PYTHON_BIN} ${PYTHON_LIBDIR}/compileall.py ${WRKDIST} || true
.endif

post-install:
	${CHOWN} -R ${LIBOWN}:${LIBGRP} ${MODZOPE_PRODUCTSDIR}
