COMMENT =		Python SSL and TLS library

MODPY_DISTV =		0.8.0
DISTNAME =		tlslite-ng-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/-beta/beta/}
EPOCH =			0
REVISION =		0

PLIST_VERSION =		${MODPY_DISTV:S/-/_/}
SUBST_VARS +=		PLIST_VERSION

CATEGORIES =		net

GH_ACCOUNT =		tlsfuzzer
GH_PROJECT =		tlslite-ng
GH_TAGNAME =		v${MODPY_DISTV}

MAINTAINER =		Theo Buehler <tb@openbsd.org>

WANTLIB +=		${MODPY_WANTLIB}

# LGPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools
MODPY_PYTEST =		Yes

RUN_DEPENDS +=		devel/py-six \
			security/py-M2Crypto \
			security/py-ecdsa

TEST_DEPENDS +=		devel/py-coveralls \
			devel/py-hypothesis \
			devel/py-mock \
			devel/py-pluggy \
			security/py-ecdsa

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src

.include <bsd.port.mk>
