# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:49 sthen Exp $

COMMENT =		Python bindings for Augeas

MODPY_EGG_VERSION = 	1.0.3
DISTNAME =		python-augeas-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python-/py-/}
REVISION =		0

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

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
