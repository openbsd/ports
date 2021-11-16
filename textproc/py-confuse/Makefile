# $OpenBSD: Makefile,v 1.1.1.1 2021/11/16 16:18:40 sthen Exp $

COMMENT =	painless YAML configuration

MODPY_EGG_VERSION =	1.6.0

DISTNAME =	confuse-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/beetbox/confuse

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		textproc/py-yaml${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-pathlib${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
