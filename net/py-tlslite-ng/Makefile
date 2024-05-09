COMMENT =		Python SSL and TLS library

MODPY_EGG_VERSION =	0.8.0-beta1
DISTNAME =		tlslite-ng-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/-beta/beta/}
REVISION =		2
EPOCH =			0

PLIST_VERSION =		${MODPY_EGG_VERSION:S/-/_/}
SUBST_VARS +=		PLIST_VERSION

CATEGORIES =		net

GH_ACCOUNT =		tlsfuzzer
GH_PROJECT =		tlslite-ng
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MAINTAINER =		Theo Buehler <tb@openbsd.org>

FLAVOR =		python3
FLAVORS =		python3

WANTLIB +=		${MODPY_WANTLIB}

# LGPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYTEST =		Yes

RUN_DEPENDS +=		devel/py-six${MODPY_FLAVOR} \
			security/py-M2Crypto${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR}

# A few key exchange and x509 tests fail due to missing Ed25519/Ed448 support
TEST_DEPENDS +=		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			security/py-ecdsa${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src

.include <bsd.port.mk>
