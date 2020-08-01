# $OpenBSD: Makefile,v 1.7 2020/08/01 08:17:39 kmos Exp $

COMMENT =		python number humanization utilities

MODPY_EGG_VERSION =	2.5.0
DISTNAME =		humanize-${MODPY_EGG_VERSION}
PKGNAME =		py-humanize-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/jmoiron/humanize

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR}

TEST_ENV =		PYTHONPATH=${WRKSRC}/src

.include <bsd.port.mk>
