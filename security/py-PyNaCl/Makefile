COMMENT =		Python binding to the NaCl library

MODPY_DISTV =	1.6.0
DISTNAME =		pynacl-${MODPY_DISTV}
PKGNAME =		py-PyNaCl-${MODPY_DISTV}

CATEGORIES =		security

HOMEPAGE =		https://github.com/pyca/pynacl/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

WANTLIB += ${MODPY_WANTLIB} pthread sodium

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/py-cffi \
			devel/py-wheel

LIB_DEPENDS =		security/libsodium
TEST_DEPENDS =		devel/py-hypothesis

MAKE_ENV +=		SODIUM_INSTALL="system"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/bindings/build.py

.include <bsd.port.mk>
