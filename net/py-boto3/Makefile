# $OpenBSD: Makefile,v 1.240 2020/07/03 21:13:00 sthen Exp $

COMMENT=		AWS SDK for Python

MODPY_EGG_VERSION=	1.14.12
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
FLAVOR=			python3

RUN_DEPENDS=		devel/py-jmespath${MODPY_FLAVOR} \
			net/py-botocore${MODPY_FLAVOR}=1.17.${MODPY_EGG_VERSION:E} \
			net/py-s3transfer${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-futures
.endif

.include <bsd.port.mk>
