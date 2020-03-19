# $OpenBSD: Makefile,v 1.212 2020/03/19 22:39:05 ajacoutot Exp $

COMMENT=		AWS SDK for Python

MODPY_EGG_VERSION=	1.12.25
DISTNAME=		boto3-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/boto/boto3

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

RUN_DEPENDS=		devel/py-jmespath${MODPY_FLAVOR} \
			net/py-botocore${MODPY_FLAVOR}=1.15.${MODPY_EGG_VERSION:E} \
			net/py-s3transfer${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-futures
.endif

.include <bsd.port.mk>
