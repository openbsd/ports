# $OpenBSD: Makefile,v 1.3 2020/04/15 14:23:20 fcambus Exp $

COMMENT =	Python bindings for keystone

MODPY_EGG_VERSION = ${GH_TAGNAME}

PKGNAME =       py-${DISTNAME}
REVISION =      1

MODULES =       lang/python
USE_GMAKE =     Yes

WRKDIST =       ${WRKDIR}/${DISTNAME}/bindings/python

FLAVORS =       python3
FLAVOR ?=

RUN_DEPENDS =   devel/keystone/main

NO_TEST =	Yes

.include <bsd.port.mk>
