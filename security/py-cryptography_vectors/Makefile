# $OpenBSD: Makefile,v 1.33 2021/11/02 00:02:17 sthen Exp $

COMMENT=	test vectors for py-cryptography

MODPY_EGG_VERSION=	3.4.8
DISTNAME=	cryptography_vectors-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES=	security
REVISION=	0

HOMEPAGE=	https://cryptography.io/

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes
MODPY_PI_DIR=	c/cryptography-vectors

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
