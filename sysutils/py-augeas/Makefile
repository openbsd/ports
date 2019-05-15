# $OpenBSD: Makefile,v 1.8 2019/05/15 12:04:41 kmos Exp $

COMMENT =		Python bindings for Augeas

MODPY_EGG_VERSION = 	1.0.3
DISTNAME =		python-augeas-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python-/py-/}
REVISION =		0

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR? =

BUILD_DEPENDS =		devel/py-cffi${MODPY_FLAVOR} \
			sysutils/augeas

RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}

# dlopen()s libaugeas
RUN_DEPENDS +=		sysutils/augeas

TEST_DEPENDS =		${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC}/test; ${MODPY_BIN} test_augeas.py

.include <bsd.port.mk>
