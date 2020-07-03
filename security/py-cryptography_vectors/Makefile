# $OpenBSD: Makefile,v 1.26 2020/07/03 21:13:06 sthen Exp $

COMMENT=	test vectors for py-cryptography

MODPY_EGG_VERSION=	2.9.2
DISTNAME=	cryptography_vectors-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES=	security
REVISION=	0

HOMEPAGE=	https://cryptography.io/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# dual: BSD or Apache 2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes
MODPY_PI_DIR=	c/cryptography-vectors

FLAVORS=	python3
FLAVOR?=

.include <bsd.port.mk>
