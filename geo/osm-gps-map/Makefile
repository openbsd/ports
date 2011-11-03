# $OpenBSD: Makefile,v 1.16 2011/11/03 17:35:12 jasper Exp $

COMMENT=		Gtk+ Widget for Displaying OpenStreetMap tiles

DISTNAME=		osm-gps-map-0.5.0
REVISION=		3
SHARED_LIBS +=  osmgpsmap 0.0 # .0.0
CATEGORIES=		geo x11

HOMEPAGE=		http://nzjrs.github.com/osm-gps-map/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.johnstowers.co.nz/files/osm-gps-map/

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 stdc++
WANTLIB += xcb xcb-render xcb-shm xml2 z

USE_LIBTOOL=		Yes

LIB_DEPENDS=		devel/libsoup \
			x11/gtk+2

CONFIGURE_STYLE=	gnu
AUTOMAKE_VERSION=	1.8
AUTOCONF_VERSION=	2.64
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
