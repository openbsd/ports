# $OpenBSD: Makefile,v 1.11 2016/11/11 11:52:35 ajacoutot Exp $

COMMENT=		Zero Configuration Networking library for Mono

V=			0.9.0
DISTNAME=		mono-zeroconf-${V}
REVISION=		5

CATEGORIES=		net

HOMEPAGE=		http://www.mono-project.com/Mono.Zeroconf
MASTER_SITES=		http://download.banshee-project.org/mono-zeroconf/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/mono
MODMONO_GMCS_COMPAT=	Yes

USE_GMAKE=		Yes

BUILD_DEPENDS=		net/avahi,-mono
RUN_DEPENDS=		net/avahi,-mono

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-mdnsresponder

.include <bsd.port.mk>
