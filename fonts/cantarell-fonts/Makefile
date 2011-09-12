# $OpenBSD: Makefile,v 1.2 2011/09/12 12:07:25 jasper Exp $

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

EXTRACT_SUFX=		.tar.bz2

MODULES=	x11/gnome

PKG_ARCH=	*
CONFIGURE_STYLE=gnu

FAKE_FLAGS=	fontdir=${PREFIX}/lib/X11/fonts/cantarell \
		configdir=${PREFIX}/share/examples/cantarell-fonts

.include <bsd.port.mk>
