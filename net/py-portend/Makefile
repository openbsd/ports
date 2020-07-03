# $OpenBSD: Makefile,v 1.2 2020/07/03 21:13:02 sthen Exp $

COMMENT =		monitor TCP ports for bound or unbound states

MODPY_EGG_VERSION =	2.5
DISTNAME =		portend-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
