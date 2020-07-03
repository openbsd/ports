# $OpenBSD: Makefile,v 1.4 2020/07/03 21:12:39 sthen Exp $

COMMENT =	Python bindings for keystone

MODPY_EGG_VERSION = ${GH_TAGNAME}

PKGNAME =       py-${DISTNAME}
REVISION =      2

MODULES =       lang/python
USE_GMAKE =     Yes

WRKDIST =       ${WRKDIR}/${DISTNAME}/bindings/python

FLAVORS =       python3
FLAVOR ?=

RUN_DEPENDS =   devel/keystone/main

NO_TEST =	Yes

.include <bsd.port.mk>
