# $OpenBSD: Makefile,v 1.1.1.1 2022/02/28 10:45:43 sthen Exp $

COMMENT =	character set detector library

MODPY_EGG_VERSION =	2.0.12

DISTNAME =	charset-normalizer-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/ousret/charset_normalizer

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

FLAVOR =		python3
FLAVORS =		python3

.include <bsd.port.mk>
