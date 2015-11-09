# $OpenBSD: Makefile,v 1.24 2015/11/09 10:36:25 ajacoutot Exp $

COMMENT=		humanist sans-serif font family

GNOME_VERSION=		0.0.18.1
GNOME_PROJECT=		cantarell-fonts

CATEGORIES=		fonts x11

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# SIL Open Font License v1.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

PKG_ARCH=		*
CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		fontdir=${PREFIX}/share/fonts/cantarell \
			configdir=${PREFIX}/share/examples/cantarell-fonts

.include <bsd.port.mk>
