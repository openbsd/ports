# $OpenBSD: Makefile,v 1.2 2008/11/25 13:54:11 ajacoutot Exp $

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		2.24.2
SHARED_LIBS +=	gweather             2.0      # .3.0
CATEGORIES=		net

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gconf-2::devel/gconf2 \
			soup-2.4::devel/libsoup \
			dbus-glib-1::x11/dbus-glib

USE_X11=		Yes

CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgweather \
			--disable-schemas-install \
			--with-zoneinfo-dir="/usr/share/zoneinfo"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
