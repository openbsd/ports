# $OpenBSD: Makefile,v 1.9 2009/06/11 18:38:17 ajacoutot Exp $

COMMENT=		weather information access library

GNOME_PROJECT=		libgweather
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p5
SHARED_LIBS +=	gweather             2.0      # .3.0
CATEGORIES=		net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 \
		expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0 \
		gpg-error gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png tasn1 xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		soup-2.4::devel/libsoup \
			dbus-glib-1::x11/dbus-glib

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	libgweather

CONFIGURE_ARGS+=	--with-zoneinfo-dir="/usr/share/zoneinfo"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
