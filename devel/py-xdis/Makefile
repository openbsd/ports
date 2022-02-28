# $OpenBSD: Makefile,v 1.21 2022/02/28 15:28:28 sthen Exp $

COMMENT =		cross-version byte-code disassembler and marshal routines

MODPY_EGG_VERSION =	6.0.3
DISTNAME =		xdis-${MODPY_EGG_VERSION}
PKGNAME =		py-xdis-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/rocky/python-xdis/

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	pytest

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
