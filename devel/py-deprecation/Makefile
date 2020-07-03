# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:43 sthen Exp $

COMMENT =		library to handle automated deprecations

MODPY_EGG_VERSION =	2.1.0

DISTNAME =		deprecation-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://deprecation.readthedocs.io/

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		sysutils/py-packaging${MODPY_FLAVOR}

TEST_DEPENDS =		devel/flake8 \
			devel/py-coverage${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=	python3

.include <bsd.port.mk>
