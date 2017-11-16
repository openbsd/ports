# $OpenBSD: Makefile,v 1.32 2017/11/16 03:33:09 bentley Exp $

COMMENT=		humanist sans-serif font family

GNOME_VERSION=		0.0.25
GNOME_PROJECT=		cantarell-fonts

CATEGORIES=		fonts x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

PKG_ARCH=		*
CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		fontdir=${PREFIX}/share/fonts/cantarell \
			configdir=${PREFIX}/share/examples/cantarell-fonts

.include <bsd.port.mk>
