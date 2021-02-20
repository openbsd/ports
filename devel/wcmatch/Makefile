# $OpenBSD: Makefile,v 1.1.1.1 2021/02/20 07:21:38 ajacoutot Exp $

COMMENT =		file matching and globbing library

MODPY_EGG_VERSION =	8.1.1
DISTNAME =		wcmatch-${MODPY_EGG_VERSION}
PKGNAME =		py-wcmatch-${MODPY_EGG_VERSION}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}
# needed for tests
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
