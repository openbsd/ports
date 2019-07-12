# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:43 sthen Exp $

COMMENT =		console XMPP client

MODPY_EGG_VERSION =	0.12
DISTNAME =		poezio-${MODPY_EGG_VERSION}
CATEGORIES =		net
REVISION =		0

HOMEPAGE =		https://poez.io/

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	-v test/

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

MODPY_DISTUTILS_BUILD =	build_ext --inplace

BUILD_DEPENDS =		lang/cython
# py-slixmpp is python3 only
RUN_DEPENDS =		net/py-aiodns${MODPY_FLAVOR} \
			security/py-potr${MODPY_FLAVOR} \
			net/py-slixmpp

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
