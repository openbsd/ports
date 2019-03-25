# $OpenBSD: Makefile,v 1.2 2019/03/25 14:29:50 kn Exp $

COMMENT =		cffi-based cairo bindings for Python

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		cairocffi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/Kozea/cairocffi

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}
TEST_DEPENDS =		${RUN_DEPENDS}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	lib/cairocffi

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
