# $OpenBSD: Makefile,v 1.6 2016/01/09 16:23:38 sthen Exp $

COMMENT=	test vectors for py-cryptography

MODPY_EGG_VERSION=	1.2.1
DISTNAME=	cryptography_vectors-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES=	security

HOMEPAGE=	https://cryptography.io/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# dual: BSD or Apache 2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
MODPY_PI=	Yes
MODPY_PI_DIR=	c/cryptography-vectors

FLAVORS=	python3
FLAVOR?=

.include <bsd.port.mk>
