# $OpenBSD: Makefile,v 1.9 2021/11/02 00:01:02 sthen Exp $

COMMENT =		objects and routines pertaining to date and time

MODPY_EGG_VERSION =	4.1.2
DISTNAME =		tempora-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jaraco/tempora

# MIT
PERMIT_PACKAGE =	Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# unported deps
NO_TEST =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}>=1.15.0
RUN_DEPENDS =		devel/py-jaraco-functools${MODPY_FLAVOR}>=1.2.0 \
			devel/py-tz${MODPY_FLAVOR}

.include <bsd.port.mk>
