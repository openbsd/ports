# $OpenBSD: Makefile,v 1.29 2022/02/26 22:03:18 sthen Exp $

COMMENT =	Python 2 and 3 compatibility library

MODPY_EGG_VERSION =	1.16.0
DISTNAME =	six-${MODPY_EGG_VERSION}
PKGNAME =	py-six-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/benjaminp/six

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	-v

.if ${FLAVOR:Mpython3}
TEST_DEPENDS =	devel/py-py${MODPY_FLAVOR}
.endif

.include <bsd.port.mk>
