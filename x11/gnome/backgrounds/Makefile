# $OpenBSD: Makefile,v 1.12 2010/04/22 08:42:55 jasper Exp $

COMMENT=		wallpapers for GNOME

GNOME_PROJECT=		gnome-backgrounds
GNOME_VERSION=		2.30.0

# GPLv2
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
