# $OpenBSD: Makefile,v 1.11 2009/10/10 15:23:07 jasper Exp $

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		2.28.0
SHARED_LIBS +=	gweather             3.0      # .3.0
CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes



MODULES=		devel/gettext \
			devel/gconf2 \
			x11/gnome

LIB_DEPENDS=		soup-2.4::devel/libsoup \
			dbus-glib-1::x11/dbus-glib

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	libgweather

CONFIGURE_ARGS+=	--with-zoneinfo-dir="/usr/share/zoneinfo"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
