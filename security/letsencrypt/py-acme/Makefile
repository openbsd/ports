COMMENT=	ACME protocol implementation

HOMEPAGE=	https://certbot.eff.org/

DISTNAME=	acme-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

RUN_DEPENDS=	security/py-cryptography>=0.8 \
		security/py-josepy \
		security/py-openssl>=0.15 \
		textproc/py-pyRFC3339 \
		devel/py-tz \
		www/py-requests \
		www/py-requests-toolbelt

TEST_DEPENDS=	devel/py-test-xdist \
		devel/py-typing-extensions

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
