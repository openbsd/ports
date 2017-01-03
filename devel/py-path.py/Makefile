# $OpenBSD: Makefile,v 1.9 2017/01/03 19:19:49 landry Exp $

COMMENT =		os.path wrapper for Python

MODPY_EGG_VERSION =	10.0
DISTNAME =		path.py-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

HOMEPAGE =		https://github.com/jaraco/path.py

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest --ignore=lib

.include <bsd.port.mk>
