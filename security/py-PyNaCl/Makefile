# $OpenBSD: Makefile,v 1.3 2018/02/17 19:21:40 sthen Exp $

COMMENT =		Python binding to the NaCl library

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		PyNaCl-${MODPY_EGG_VERSION}
REVISION =		1
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/pyca/pynacl/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

WANTLIB += ${MODPY_WANTLIB} pthread sodium

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR}

LIB_DEPENDS =		security/libsodium
TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR}

MAKE_ENV +=		SODIUM_INSTALL="system"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/bindings/build.py

.include <bsd.port.mk>
