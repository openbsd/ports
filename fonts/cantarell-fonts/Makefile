# $OpenBSD: Makefile,v 1.16 2014/09/23 05:49:55 ajacoutot Exp $

COMMENT=	humanist sans-serif font family

GNOME_VERSION=	0.0.16
GNOME_PROJECT=	cantarell-fonts

CATEGORIES=	fonts x11

HOMEPAGE=	http://abattis.org/cantarell/

MANTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# SIL Open Font License v1.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome

PKG_ARCH=	*
CONFIGURE_STYLE=gnu

FAKE_FLAGS=	fontdir=${PREFIX}/lib/X11/fonts/cantarell \
		configdir=${PREFIX}/share/examples/cantarell-fonts

.include <bsd.port.mk>
