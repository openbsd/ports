# $OpenBSD: Makefile,v 1.5 2011/07/14 18:48:50 ajacoutot Exp $

COMMENT=	Zero Configuration Networking library for Mono

V=		0.9.0
DISTNAME=	mono-zeroconf-${V}
REVISION=	1

CATEGORIES=	net

HOMEPAGE=	http://www.mono-project.com/Mono.Zeroconf
MASTER_SITES=	http://download.banshee-project.org/mono-zeroconf/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/mono

USE_GMAKE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/avahi,-mono,no_gui,no_qt3,no_qt4

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-mdnsresponder

.include <bsd.port.mk>
