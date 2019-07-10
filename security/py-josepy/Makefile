# $OpenBSD: Makefile,v 1.6 2019/07/10 13:20:28 sthen Exp $

COMMENT=	Javascript Object Signing and Encryption (JOSE)

CATEGORIES=	security devel

MODPY_EGG_VERSION= 1.2.0
DISTNAME=	josepy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

FLAVORS=	python3
FLAVOR?=

# Apache 2.0
PERMIT_PACKAGE= Yes

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes
SUBST_VARS=	MODPY_FLAVOR

RUN_DEPENDS=	devel/py-six${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR}

BUILD_DEPENDS=	${RUN_DEPENDS}

# needs additional dep's which require a chain of updates in ports
NO_TEST=	Yes

post-install:
	mv ${PREFIX}/bin/jws{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
