# $OpenBSD: Makefile,v 1.18 2016/04/29 10:18:43 ajacoutot Exp $

COMMENT=		python interface to amazon web services

MODPY_EGG_VERSION=	2.40.0
DISTNAME=		boto-${MODPY_EGG_VERSION}
PKGNAME=	 	py-${DISTNAME}

# XXX MODPY_PI MASTER_SITES is broken
GH_ACCOUNT=		boto
GH_PROJECT=		boto
GH_TAGNAME=		${MODPY_EGG_VERSION}

CATEGORIES=		net

HOMEPAGE=		https://github.com/boto/boto

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

#MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		security/py-paramiko \
			textproc/py-yaml \
			www/py-requests

# requires an AWS account
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
