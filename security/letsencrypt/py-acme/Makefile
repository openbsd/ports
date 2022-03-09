COMMENT=	ACME protocol implementation

HOMEPAGE=	https://certbot.eff.org/

DISTNAME=	acme-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYTEST =	Yes

RUN_DEPENDS=	security/py-cryptography${MODPY_FLAVOR}>=0.8 \
		security/py-josepy${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR}>=0.15 \
		textproc/py-pyRFC3339${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-toolbelt${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-test-xdist${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
