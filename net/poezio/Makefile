# $OpenBSD: Makefile,v 1.7 2018/09/06 15:50:41 danj Exp $

COMMENT =		console XMPP client

MODPY_EGG_VERSION =	0.12
DISTNAME =		poezio-${MODPY_EGG_VERSION}
CATEGORIES =		net

HOMEPAGE =		https://poez.io/

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

MODPY_DISTUTILS_BUILD =	build_ext --inplace

BUILD_DEPENDS =		lang/cython
# py-slixmpp is python3 only
RUN_DEPENDS =		net/py-aiodns${MODPY_FLAVOR} \
			security/py-potr${MODPY_FLAVOR} \
			net/py-slixmpp

TEST_DEPENDS =		${RUN_DEPENDS} \
			${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-test${MODPY_FLAVOR}

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest -v test/

.include <bsd.port.mk>
