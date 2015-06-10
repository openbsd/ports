# $OpenBSD: Makefile,v 1.2 2015/06/10 22:06:01 sthen Exp $

COMMENT=	cryptographic recipes and primitives for Python

MODPY_EGG_VERSION=	0.9
REVISION=	0
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

.if ${FLAVOR:Mpython3}
CFFI_HASH1=	1f8d6bc8xc302a38b
CFFI_HASH2=	a8febd48xffc7b1ce
CFFI_HASH3=	b03f9c7x62b488b1
.else
RUN_DEPENDS+=	devel/py-enum34 \
		net/py-ipaddress
CFFI_HASH1=	26cb75b8x62b488b1
CFFI_HASH2=	590da19fxffc7b1ce
CFFI_HASH3=	e7d09016xc302a38b
.endif

SUBST_VARS+=	CFFI_HASH1
SUBST_VARS+=	CFFI_HASH2
SUBST_VARS+=	CFFI_HASH3

BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	devel/py-pretend${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		security/py-cryptography_vectors${MODPY_FLAVOR} \
		textproc/py-iso8601${MODPY_FLAVOR}

.include <bsd.port.mk>
