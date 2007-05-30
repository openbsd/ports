# $OpenBSD: Makefile,v 1.2 2007/05/30 09:56:29 jasper Exp $

COMMENT=		"wallpapers for Gnome"

DISTNAME=		gnome-backgrounds-2.16.2

CATEGORIES=		x11/gnome

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-backgrounds/2.16/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		::devel/gettext \
			::textproc/p5-XML-Parser

USE_GMAKE=		Yes
CONFIGURE_STYLE=        gnu
CONFIGURE_ENV=		GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
