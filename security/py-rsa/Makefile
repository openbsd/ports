# $OpenBSD: Makefile,v 1.12 2019/05/15 12:04:41 kmos Exp $

# !!! do not update blindly: sysutils/awscli requires a specific version

COMMENT=		Python RSA implementation

MODPY_EGG_VERSION=	4.0
DISTNAME=		rsa-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		security

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS=		devel/py-asn1${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR ?=

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

.include <bsd.port.mk>
