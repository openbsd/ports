# $OpenBSD: Makefile,v 1.5 2016/04/22 07:44:00 ajacoutot Exp $

COMMENT=		AWS SDK for Python

# XXX issues with pypi MASTER_SITES
MODPY_EGG_VERSION=	1.3.1
DISTNAME=               boto3-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

GH_ACCOUNT=             boto
GH_PROJECT=             boto3
GH_TAGNAME=             ${MODPY_EGG_VERSION}

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/boto/boto3

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

#MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR ?=

RUN_DEPENDS=		devel/py-jmespath${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			net/py-botocore${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-futures
.endif

TEST_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
