# $OpenBSD: Makefile,v 1.6 2019/05/15 12:04:36 kmos Exp $

COMMENT =		rapid multi-Python deployment

DISTNAME =		execnet-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	1.5.0
MODPY_PI =		Yes
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =	devel

HOMEPAGE =	http://codespeak.net/execnet

# MIT
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	testing

RUN_DEPENDS +=		devel/py-apipkg${MODPY_FLAVOR}
BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS +=		${FULLPKGNAME}:${FULLPKGPATH}

.include <bsd.port.mk>
