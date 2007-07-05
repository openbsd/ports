# $OpenBSD: Makefile,v 1.3 2007/07/05 22:50:10 jasper Exp $

COMMENT=		wallpapers for Gnome

GNOME_PROJECT=		gnome-backgrounds
GNOME_VERSION=		2.16.2

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
