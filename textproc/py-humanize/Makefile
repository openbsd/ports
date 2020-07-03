# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:14 sthen Exp $

COMMENT =		python number humanization utilities

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		humanize-${MODPY_EGG_VERSION}
PKGNAME =		py-humanize-${MODPY_EGG_VERSION}
REVISION =		0

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
FLAVOR ?=

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-freezegun${MODPY_FLAVOR}

TEST_ENV =		PYTHONPATH=${WRKSRC}/src

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

.include <bsd.port.mk>
