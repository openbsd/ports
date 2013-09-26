# $OpenBSD: Makefile,v 1.76 2013/09/26 15:01:08 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		Unicode character map for the GNOME project

GNOME_PROJECT=		gucharmap
GNOME_VERSION=		3.9.99

SHARED_LIBS +=  gucharmap_2_90            7.0 # 7.0

HOMEPAGE=		http://live.gnome.org/Gucharmap

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

MODGNOME_TOOLS= 	gi vala yelp
MODGNOME_DESKTOP_FILE=	Yes

# configure checks for desktop-file-validate(1)
BUILD_DEPENDS +=	devel/desktop-file-utils

LIB_DEPENDS=		x11/gtk+3,-main

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

.include <bsd.port.mk>
