# $OpenBSD: Makefile,v 1.30 2014/03/16 09:12:24 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	extra plugins for Anjuta IDE

GNOME_PROJECT=	anjuta-extras
GNOME_VERSION=	3.10.0
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://www.anjuta.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender anjuta-3 atk-1.0 atk-bridge-2.0
WANTLIB += atspi cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gdl-3 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ util xcb xcb-render xcb-shm xml2 z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	yelp

# plugins/scintilla/{FilePath.cxx,aneditor-priv.h,aneditor.cxx}
# https://bugzilla.gnome.org/show_bug.cgi?id=631157
CFLAGS +=	-DMAX_PATH=PATH_MAX

LIB_DEPENDS=	x11/gnome/anjuta>=${GNOME_VERSION}

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

post-install:
	rm ${PREFIX}/lib/anjuta/*.la

.include <bsd.port.mk>
