# $OpenBSD: Makefile,v 1.1.1.1 2020/01/16 13:55:48 pamela Exp $

COMMENT =		backports of the Python traceback module

MODPY_EGG_VERSION =	1.4.0

DISTNAME =		traceback2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/testing-cabal/traceback2

MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# PSF 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	traceback2

BUILD_DEPENDS =		devel/py-pbr

RUN_DEPENDS =		devel/py-linecache2

TEST_DEPENDS =		devel/py-contextlib2 \
			devel/py-fixtures \
			devel/py-testtools \
			devel/py-unittest2

.include <bsd.port.mk>
