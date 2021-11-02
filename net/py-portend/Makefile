# $OpenBSD: Makefile,v 1.8 2021/11/02 00:01:41 sthen Exp $

COMMENT =		monitor TCP ports for bound or unbound states

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		portend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
