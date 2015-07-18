# $OpenBSD: Makefile,v 1.2 2015/07/18 15:46:11 jeremy Exp $

COMMENT=		integration with Ubiquiti mFi sensors and devices

DISTNAME=		mfi-0.9.1
REVISION=		0
CATEGORIES=		net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
