# $OpenBSD: Makefile,v 1.2 2021/02/23 19:39:19 sthen Exp $

COMMENT =		backports of the Python linecache module

MODPY_EGG_VERSION =	1.0.0

DISTNAME =		linecache2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/testing-cabal/linecache2

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# Python Software Foundation License
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	linecache2

BUILD_DEPENDS =		devel/py-pbr

TEST_DEPENDS =		devel/py-fixtures \
			devel/py-unittest2

.include <bsd.port.mk>
