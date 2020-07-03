# $OpenBSD: Makefile,v 1.32 2020/07/03 21:13:00 sthen Exp $

COMMENT=		python interface to amazon web services

MODPY_EGG_VERSION=	2.49.0
DISTNAME=		boto-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1

CATEGORIES=		net

HOMEPAGE=		https://github.com/boto/boto

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		security/py-paramiko${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR?=

# requires an AWS account
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
