# $OpenBSD: Makefile,v 1.8 2020/06/12 12:00:43 ajacoutot Exp $

COMMENT =		Python binding to the NaCl library

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		PyNaCl-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://github.com/pyca/pynacl/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

WANTLIB += ${MODPY_WANTLIB} pthread sodium

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-cffi${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}

LIB_DEPENDS =		security/libsodium
TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR}

MAKE_ENV +=		SODIUM_INSTALL="system"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/bindings/build.py

.include <bsd.port.mk>
