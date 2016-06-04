# $OpenBSD: Makefile,v 1.11 2016/06/04 16:44:35 sthen Exp $

COMMENT=	cryptographic recipes and primitives for Python

MODPY_EGG_VERSION=	1.3.4
DISTNAME=	cryptography-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES=	security devel

HOMEPAGE=	https://cryptography.io/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# dual: BSD or Apache 2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	${MODPY_WANTLIB} crypto pthread ssl

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS=	devel/py-asn1${MODPY_FLAVOR} \
		devel/py-cffi${MODPY_FLAVOR}>=1.4.2 \
		devel/py-six${MODPY_FLAVOR} \
		net/py-idna${MODPY_FLAVOR}

.if ! ${FLAVOR:Mpython3}
RUN_DEPENDS+=	devel/py-enum34 \
		net/py-ipaddress
.endif

BUILD_DEPENDS=	${RUN_DEPENDS}

# XXX fetches hypothesis (not ported) at test time
# XXX needs *loads* of RAM
TEST_DEPENDS=	devel/py-asn1-modules${MODPY_FLAVOR} \
		devel/py-pretend${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
		security/py-cryptography_vectors${MODPY_FLAVOR}=${MODPY_EGG_VERSION} \
		textproc/py-iso8601${MODPY_FLAVOR}

.include <bsd.port.mk>
