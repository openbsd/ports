# $OpenBSD: Makefile,v 1.1.1.1 2015/11/04 09:53:09 sthen Exp $

COMMENT=	ACME protocol implementation

MODPY_EGG_VERSION=	0.0.0.dev20151030
DISTNAME=	acme-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME:S/.dev/pre/}
CATEGORIES=	security

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Apache 2
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=	python3
FLAVOR?=

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes

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

TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR}
.if ! ${FLAVOR:Mpython3}
TEST_DEPENDS+=	devel/py-mock
.endif

post-install:
	mv ${PREFIX}/bin/jws ${PREFIX}/bin/jws${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
