# $OpenBSD: Makefile,v 1.10 2017/01/24 09:45:45 shadchin Exp $

COMMENT =		os.path wrapper for Python

MODPY_EGG_VERSION =	10.1
DISTNAME =		path.py-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
