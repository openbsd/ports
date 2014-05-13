# $OpenBSD: Makefile,v 1.88 2014/05/13 08:25:59 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		Unicode character map for the GNOME project

GNOME_PROJECT=		gucharmap
GNOME_VERSION=		3.12.1

SHARED_LIBS +=  gucharmap_2_90            7.0 # 7.0

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection vala yelp
LIB_DEPENDS=		x11/gtk+3,-main

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

.include <bsd.port.mk>
