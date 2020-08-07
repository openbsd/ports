# $OpenBSD: Makefile,v 1.5 2020/08/07 09:59:58 jasper Exp $

COMMENT =	Python bindings for keystone

MODPY_EGG_VERSION = ${GH_TAGNAME}

PKGNAME =       py-${DISTNAME}

MODULES =       lang/python
MODPY_SETUPTOOLS =Yes

USE_GMAKE =     Yes

WRKDIST =       ${WRKDIR}/${DISTNAME}/bindings/python

FLAVORS =       python3
FLAVOR ?=

RUN_DEPENDS =   devel/keystone/main

NO_TEST =	Yes

.include <bsd.port.mk>
