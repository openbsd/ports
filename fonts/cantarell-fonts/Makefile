# $OpenBSD: Makefile,v 1.22 2015/10/12 17:09:39 ajacoutot Exp $

COMMENT=		humanist sans-serif font family

GNOME_VERSION=		0.0.17.2
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
