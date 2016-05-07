# $OpenBSD: Makefile,v 1.18 2016/05/07 08:44:25 ajacoutot Exp $

COMMENT=		automated reasoning engine, flow based programming framework

MODPY_EGG_VERSION=	1.5.4
DISTNAME=		ioflo-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

# XXX MODPY_PI MASTER_SITES is broken
GH_ACCOUNT=		ioflo
GH_PROJECT=		ioflo
GH_TAGNAME=		v${MODPY_EGG_VERSION}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/ioflo/ioflo

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

#MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
