# $OpenBSD: Makefile,v 1.21 2017/01/11 23:28:16 ajacoutot Exp $

COMMENT=		automated reasoning engine, flow based programming framework

MODPY_EGG_VERSION=	1.6.7
DISTNAME=		ioflo-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/ioflo/ioflo

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		devel/py-setuptools_git

.include <bsd.port.mk>
