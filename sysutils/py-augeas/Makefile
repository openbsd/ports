# $OpenBSD: Makefile,v 1.4 2017/06/05 08:01:39 jasper Exp $

COMMENT =		Python bindings for Augeas

MODPY_EGG_VERSION = 	1.0.2
DISTNAME =		python-augeas-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python-/py-/}

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR? =

# dlopen()s libaugeas
RUN_DEPENDS =		sysutils/augeas
TEST_DEPENDS =		${BUILD_PKGPATH} \
			${RUN_DEPENDS}

do-test:
	cd ${WRKSRC}/test; ${MODPY_BIN} test_augeas.py

.include <bsd.port.mk>
