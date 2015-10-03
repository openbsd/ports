# $OpenBSD: Makefile,v 1.10 2015/10/03 11:55:39 robert Exp $

COMMENT=		Zero Configuration Networking library for Mono

V=			0.9.0
DISTNAME=		mono-zeroconf-${V}
REVISION=		4

CATEGORIES=		net

HOMEPAGE=		http://www.mono-project.com/Mono.Zeroconf
MASTER_SITES=		http://download.banshee-project.org/mono-zeroconf/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/mono
MODMONO_GMCS_COMPAT=	Yes

USE_GMAKE=		Yes

BUILD_DEPENDS=		net/avahi,-mono,no_qt3,no_qt4
RUN_DEPENDS=		net/avahi,-mono,no_qt3,no_qt4

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-mdnsresponder

.include <bsd.port.mk>
