# $OpenBSD: Makefile,v 1.1.1.1 2021/10/08 15:31:06 bket Exp $

COMMENT =	define simple search patterns in bulk to perform

MODPY_EGG_VERSION =	3.0.1

DISTNAME =	rebulk-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/Toilal/rebulk/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	rebulk

BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
