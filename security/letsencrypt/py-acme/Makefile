# $OpenBSD: Makefile,v 1.27 2021/11/02 00:02:16 sthen Exp $

COMMENT=	ACME protocol implementation

HOMEPAGE=	https://certbot.eff.org/

DISTNAME=	acme-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME:S/.dev/pre/}
REVISION=	0

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	devel/py-asn1${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		net/py-idna${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR}>=0.8 \
		security/py-openssl${MODPY_FLAVOR}>=0.15 \
		textproc/py-pyRFC3339${MODPY_FLAVOR} \
		www/py-ndg-httpsclient${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-toolbelt${MODPY_FLAVOR} \
		www/py-werkzeug${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}

MODPY_PYTEST =	Yes

TEST_DEPENDS=	security/py-josepy${MODPY_FLAVOR}

.include <bsd.port.mk>
