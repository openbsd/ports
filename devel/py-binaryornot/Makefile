# $OpenBSD: Makefile,v 1.3 2019/05/15 12:04:35 kmos Exp $

COMMENT =		lightweight Python package to check if a file is binary

MODPY_EGG_VERSION =	0.4.4
DISTNAME =		binaryornot-${MODPY_EGG_VERSION}
PKGNAME =		py-binaryornot-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/audreyr/binaryornot

# BSD-3-Clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		textproc/py-chardet${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR}

FLAVORS +=		python3
FLAVOR ?=

.include <bsd.port.mk>
