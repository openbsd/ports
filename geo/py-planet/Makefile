# $OpenBSD: Makefile,v 1.1.1.1 2017/06/05 20:44:47 sebastia Exp $

COMMENT =	client library and CLI for Planet's public API

MODPY_EGG_VERSION =	1.0.0
DISTNAME =	planet-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	geo

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS +=	devel/py-click${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-futures${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/planet ${PREFIX}/bin/planet${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
