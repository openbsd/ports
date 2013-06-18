# $OpenBSD: Makefile,v 1.12 2013/06/18 15:28:18 ajacoutot Exp $

# XXX remove @exec-update when we branch 5.4-current

COMMENT=	humanist sans-serif font family

GNOME_VERSION=	0.0.13
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
