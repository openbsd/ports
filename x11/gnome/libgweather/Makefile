# $OpenBSD: Makefile,v 1.12 2009/10/20 20:14:23 phessler Exp $

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		2.28.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=		gweather             3.0      # .3.0
CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes



MODULES=		devel/gettext \
			devel/gconf2 \
			x11/gnome

LIB_DEPENDS=		soup-gnome-2.4.>=1::devel/libsoup,-gnome \
			dbus-glib-1::x11/dbus-glib

WANTLIB +=		ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB +=		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1
WANTLIB +=		expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB +=		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB +=		gnutls gnome-keyring gobject-2.0 gpg-error 
WANTLIB +=		gthread-2.0 gtk-x11-2.0	m pango-1.0 pangocairo-1.0
WANTLIB +=		pangoft2-1.0 pcre pixman-1 png proxy pthread-stubs
WANTLIB +=		soup-2.4 sqlite3 tasn1 xcb xml2 z

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	libgweather

CONFIGURE_ARGS+=	--with-zoneinfo-dir="/usr/share/zoneinfo"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
