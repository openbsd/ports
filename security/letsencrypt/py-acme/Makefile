# $OpenBSD: Makefile,v 1.9 2016/10/11 15:06:41 sthen Exp $

COMMENT=	ACME protocol implementation

DISTNAME=	acme-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME:S/.dev/pre/}

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS=	devel/py-asn1${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		net/py-idna${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR}>=0.8 \
		security/py-openssl${MODPY_FLAVOR}>=0.15 \
		textproc/py-pyRFC3339${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-werkzeug${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}
SUBST_VARS=	MODPY_FLAVOR

# weird hangs in network-listening tests.
TEST_IS_INTERACTIVE=	Yes

TEST_DEPENDS=	devel/py-funcsigs${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/jws ${PREFIX}/bin/jws${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
