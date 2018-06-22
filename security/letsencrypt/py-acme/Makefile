# $OpenBSD: Makefile,v 1.16 2018/06/22 00:03:15 sthen Exp $

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
		www/py-ndg-httpsclient${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-requests-toolbelt${MODPY_FLAVOR} \
		www/py-werkzeug${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}
SUBST_VARS=	MODPY_FLAVOR

## XXX
# imported module 'acme.jws_test' has this __file__ attribute:
#   /usr/obj/ports/py-acme-0.25.1/acme-0.25.1/acme/jws_test.py
# which is not the same as the test file we want to collect:
#   /usr/obj/ports/py-acme-0.25.1/acme-0.25.1/lib/acme/jws_test.py
NO_TEST=	Yes

# weird hangs in network-listening tests.
#TEST_IS_INTERACTIVE=	Yes
#
#TEST_DEPENDS=	devel/py-funcsigs${MODPY_FLAVOR} \
#		devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
