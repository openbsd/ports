# $OpenBSD: Makefile,v 1.1.1.1 2011/07/19 09:16:06 jasper Exp $

COMMENT=	humanist sans-serif font family

GNOME_VERSION=	0.0.6
GNOME_PROJECT=	cantarell-fonts
REVISION=	0

CATEGORIES=	fonts x11

HOMEPAGE=	http://abattis.org/cantarell/

# SIL Open Font License v1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome

PKG_ARCH=	*
CONFIGURE_STYLE=gnu

FAKE_FLAGS=	fontdir=${PREFIX}/lib/X11/fonts/cantarell \
		configdir=${PREFIX}/share/examples/cantarell-fonts

.include <bsd.port.mk>
