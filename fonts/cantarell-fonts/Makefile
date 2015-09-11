# $OpenBSD: Makefile,v 1.20 2015/09/11 19:50:48 sthen Exp $

COMMENT=	humanist sans-serif font family

GNOME_VERSION=	0.0.16
GNOME_PROJECT=	cantarell-fonts
REVISION=	3

CATEGORIES=	fonts x11

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# SIL Open Font License v1.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

PKG_ARCH=	*
CONFIGURE_STYLE=gnu

FAKE_FLAGS=	fontdir=${PREFIX}/share/fonts/cantarell \
		configdir=${PREFIX}/share/examples/cantarell-fonts

.include <bsd.port.mk>
