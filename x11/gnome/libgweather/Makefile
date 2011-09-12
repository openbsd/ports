# $OpenBSD: Makefile,v 1.25 2011/09/12 12:04:17 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		3.0.2

SHARED_LIBS +=		gweather-3             0.0      # 0.2

CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			devel/gconf2 \
			x11/gnome

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		devel/libsoup,-gnome \
			x11/gtk+3

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += cairo cairo-gobject dbus-1 drm expat fontconfig freetype
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-keyring gobject-2.0 gpg-error gthread-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs soup-2.4 soup-gnome-2.4 sqlite3 xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODGCONF2_SCHEMAS_DIR=	libgweather

CONFIGURE_ARGS+=	--with-zoneinfo-dir="/usr/share/zoneinfo" \
			--disable-gtk-doc \
			--enable-introspection
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
