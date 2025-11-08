COMMENT=	ACME protocol implementation

HOMEPAGE=	https://certbot.eff.org/

DISTNAME=	acme-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

MODULES=	lang/python
RUN_DEPENDS=	security/py-cryptography>=43.0.0 \
		security/py-josepy>=2.0.0 \
		security/py-openssl>=25.0.0 \
		textproc/py-pyRFC3339 \
		devel/py-tz \
		www/py-requests \
		www/py-requests-toolbelt

TEST_DEPENDS=	devel/py-test-xdist \
		devel/py-typing-extensions

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
