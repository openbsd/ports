# $OpenBSD: Makefile,v 1.20 2016/07/30 14:35:24 ajacoutot Exp $

COMMENT=		python interface to amazon web services

MODPY_EGG_VERSION=	2.42.0
DISTNAME=		boto-${MODPY_EGG_VERSION}
PKGNAME=	 	py-${DISTNAME}

CATEGORIES=		net

HOMEPAGE=		https://github.com/boto/boto

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		security/py-paramiko \
			textproc/py-yaml \
			www/py-requests

# requires an AWS account
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
