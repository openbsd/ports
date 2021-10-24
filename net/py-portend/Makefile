# $OpenBSD: Makefile,v 1.4 2021/10/24 09:28:49 sthen Exp $

COMMENT =		monitor TCP ports for bound or unbound states

MODPY_EGG_VERSION =	2.5
DISTNAME =		portend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		net

HOMEPAGE =		https://github.com/jaraco/portend

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}>=1.15.0
RUN_DEPENDS =		devel/py-tempora${MODPY_FLAVOR}>=1.8

FLAVORS =		python3
FLAVOR =		python3

NO_TEST =		Yes

.include <bsd.port.mk>
