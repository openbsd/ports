# $OpenBSD: Makefile,v 1.9 2016/10/08 09:20:15 ajacoutot Exp $

# !!! do not update blindly: sysutils/awscli requires a specific version

COMMENT=		Amazon S3 transfer manager for Python

MODPY_EGG_VERSION=	0.1.7
DISTNAME=		s3transfer-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/boto/s3transfer

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

RUN_DEPENDS=		net/py-botocore${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-futures${MODPY_FLAVOR}
.endif

.include <bsd.port.mk>
