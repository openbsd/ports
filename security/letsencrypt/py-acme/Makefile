# $OpenBSD: Makefile,v 1.4 2015/11/17 14:19:37 sthen Exp $

COMMENT=	ACME protocol implementation

DISTNAME=	acme-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME:S/.dev/pre/}
REVISION=	2

FLAVORS=	python3
FLAVOR?=

MODULES=	lang/python

RUN_DEPENDS=	devel/py-asn1${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		net/py-idna${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR}>=0.8 \
		security/py-openssl${MODPY_FLAVOR}>=0.15 \
		textproc/py-pyRFC3339${MODPY_FLAVOR} \
		www/py-ndg-httpsclient${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-werkzeug${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}
SUBST_VARS=	MODPY_FLAVOR

# weird hangs in network-listening tests.
TEST_IS_INTERACTIVE=	Yes

.if ${FLAVOR:Mpython3}
# no devel/py-mock for py3 yet
NO_TEST=	Yes
.else
TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}
# py-funcsigs not imported yet
#TEST_DEPENDS+=	devel/py-funcsigs${MODPY_FLAVOR}
NO_TEST=	Yes
.endif

post-install:
	mv ${PREFIX}/bin/jws ${PREFIX}/bin/jws${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
