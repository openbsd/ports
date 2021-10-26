# $OpenBSD: Makefile,v 1.5 2021/10/26 20:06:52 sthen Exp $

COMMENT =		monitor TCP ports for bound or unbound states

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		portend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/jaraco/portend

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}>=1.15.0
RUN_DEPENDS =		devel/py-tempora${MODPY_FLAVOR}>=1.8

NO_TEST =		Yes

.include <bsd.port.mk>
