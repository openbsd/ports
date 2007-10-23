# $OpenBSD: Makefile,v 1.5 2007/10/23 22:01:06 jasper Exp $

COMMENT=		wallpapers for Gnome

GNOME_PROJECT=		gnome-backgrounds
GNOME_VERSION=		2.20.0

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
