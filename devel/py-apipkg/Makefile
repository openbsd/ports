# $OpenBSD: Makefile,v 1.2 2016/08/31 20:25:23 ajacoutot Exp $

COMMENT =	namespace control and lazy-import mechanism for Python

DISTNAME =		apipkg-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	1.4
MODPY_PI =		Yes
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =	devel

HOMEPAGE =	https://bitbucket.org/hpk42/apipkg

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =               python3
FLAVOR ?=

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
