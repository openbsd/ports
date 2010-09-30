# $OpenBSD: Makefile,v 1.24 2010/09/30 07:50:14 jasper Exp $

COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		2.32.0

CATEGORIES=		editors

HOMEPAGE=		http://live.gnome.org/Gedit/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 gtksourceview-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb xml2
WANTLIB += xcb-render xcb-render-util z gucharmap

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS} \
			::x11/gnome/doc-utils
LIB_DEPENDS=		:gucharmap->=2.24.1.1:x11/gnome/gucharmap
RUN_DEPENDS=		::devel/vte,-python \
			:gedit->=2.30.0:x11/gnome/gedit \
			:py-gtk2->=2.12.0:x11/py-gtk2

USE_X11=		Yes
USE_LIBTOOL=		Yes
MODGCONF2_SCHEMAS_DIR=	gedit

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-plugins=all
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
