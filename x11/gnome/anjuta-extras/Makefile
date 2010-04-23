# $OpenBSD: Makefile,v 1.1.1.1 2010/04/23 18:38:38 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	extra plugins for anjuta

GNOME_PROJECT=	anjuta-extras
GNOME_VERSION=	2.30.0

CATEGORIES=	devel

HOMEPAGE=	http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += cairo dbus-1 dbus-glib-1 expat fontconfig freetype
WANTLIB += gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnomecanvas-2 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 ltdl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs unique-1.0 util xcb
WANTLIB += xcb-render xcb-render-util xml2 z

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=	anjuta::x11/gnome/anjuta \
		cdt,graph,gvc,pathplan::math/graphviz

LIBTOOL_FLAGS=	--tag=disable-static
USE_X11=	Yes
MODGCONF2_SCHEMAS_DIR= anjuta

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--disable-plugin-valgrind

.include <bsd.port.mk>
