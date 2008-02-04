# $OpenBSD: Makefile,v 1.6 2008/02/04 17:55:18 jasper Exp $

COMMENT=		wallpapers for Gnome

GNOME_PROJECT=		gnome-backgrounds
GNOME_VERSION=		2.20.0
PKGNAME=		${DISTNAME}p0

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		x11/gnome

BUILD_DEPENDS=		::devel/gettext

USE_LIBTOOL=		No
CONFIGURE_ENV=		GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
