# $OpenBSD: Makefile,v 1.3 2015/06/23 16:18:45 sthen Exp $

COMMENT=	cryptographic recipes and primitives for Python

MODPY_EGG_VERSION=	0.9.1
DISTNAME=	cryptography-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES=	security devel

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	${MODPY_WANTLIB} crypto pthread ssl

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS=	devel/py-asn1${MODPY_FLAVOR} \
		devel/py-cffi${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		net/py-idna${MODPY_FLAVOR}

.if ! ${FLAVOR:Mpython3}
RUN_DEPENDS+=	devel/py-enum34 \
		net/py-ipaddress
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	devel/py-pretend${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		security/py-cryptography_vectors${MODPY_FLAVOR} \
		textproc/py-iso8601${MODPY_FLAVOR}

.include <bsd.port.mk>
