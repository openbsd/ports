# $OpenBSD: Makefile,v 1.23 2016/12/09 10:44:21 ajacoutot Exp $

COMMENT=		python interface to amazon web services

MODPY_EGG_VERSION=	2.44.0
DISTNAME=		boto-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net

HOMEPAGE=		https://github.com/boto/boto

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

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
