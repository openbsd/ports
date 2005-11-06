# $OpenBSD: zope.port.mk,v 1.3 2005/11/06 20:20:58 mbalmer Exp $
#
#	zope.port.mk - Xavier Santolaria <xavier@santolaria.net>
#	This file is in the public domain.

MODZOPE_PYTHON_VERSION=	2.4

BUILD_DEPENDS+= ::lang/python/${MODZOPE_PYTHON_VERSION}
RUN_DEPENDS+=	::www/zope

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
