# $OpenBSD: Makefile,v 1.24 2020/03/26 13:25:01 ajacoutot Exp $

# !!! do not update blindly: sysutils/awscli requires a specific version

COMMENT=		Amazon S3 transfer manager for Python

MODPY_EGG_VERSION=	0.3.3
DISTNAME=		s3transfer-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/boto/s3transfer

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		net/py-botocore${MODPY_FLAVOR}

.include <bsd.port.mk>
