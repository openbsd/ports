# $OpenBSD: Makefile,v 1.7 2010/03/21 10:44:25 jasper Exp $

COMMENT=		Gtk+ Widget for Displaying OpenStreetMap tiles

DISTNAME=		osm-gps-map-0.5.0
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

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls
WANTLIB += gobject-2.0 gpg-error gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs tasn1
WANTLIB += xcb xml2 z gcrypt

USE_LIBTOOL=		Yes

LIB_DEPENDS=		soup-2.4::devel/libsoup \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

CONFIGURE_STYLE=	gnu
AUTOMAKE_VERSION=	1.8
AUTOCONF_VERSION=	2.62
CONFIGURE_ARGS+=	--disable-silent-rules
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
