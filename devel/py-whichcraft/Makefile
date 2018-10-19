# $OpenBSD: Makefile,v 1.1.1.1 2018/10/19 00:05:29 danj Exp $

COMMENT =		cross-platform, cross-python, shutil.which functionality

MODPY_EGG_VERSION =	0.4.1
DISTNAME =		whichcraft-${MODPY_EGG_VERSION}
PKGNAME =		py-whichcraft-${MODPY_EGG_VERSION}

CATEGORIES =		devel sysutils

HOMEPAGE =		https://github.com/pydanny/whichcraft

# BSD-3-Clause
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

FLAVORS +=		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_whichcraft.py

.include <bsd.port.mk>
