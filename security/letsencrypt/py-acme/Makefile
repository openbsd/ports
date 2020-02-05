# $OpenBSD: Makefile,v 1.22 2020/02/05 19:43:09 sthen Exp $

COMMENT=	ACME protocol implementation

HOMEPAGE=	https://certbot.eff.org/

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
		www/py-ndg-httpsclient${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-toolbelt${MODPY_FLAVOR} \
		www/py-werkzeug${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}
SUBST_VARS=	MODPY_FLAVOR

MODPY_PYTEST =	Yes

TEST_DEPENDS=	devel/py-mock${MODPY_FLAVOR} \
		security/py-josepy${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
TEST_DEPENDS+=	devel/py-funcsigs
.endif

.include <bsd.port.mk>
