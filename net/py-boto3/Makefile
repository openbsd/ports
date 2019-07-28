# $OpenBSD: Makefile,v 1.180 2019/07/28 07:32:34 ajacoutot Exp $

COMMENT=		AWS SDK for Python

MODPY_EGG_VERSION=	1.9.197
DISTNAME=		boto3-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

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
			devel/py-six${MODPY_FLAVOR} \
			net/py-botocore${MODPY_FLAVOR}=1.12.${MODPY_EGG_VERSION:E} \
			net/py-s3transfer${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-futures
.endif

.include <bsd.port.mk>
