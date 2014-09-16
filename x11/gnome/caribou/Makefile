# $OpenBSD: Makefile,v 1.29 2014/09/16 07:05:08 ajacoutot Exp $

COMMENT=	input assistive technology

GNOME_PROJECT=	caribou
GNOME_VERSION=	0.4.15

SHARED_LIBS +=  caribou                   0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xtst atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject clutter-1.0 cogl cogl-pango
WANTLIB += cogl-path dbus-1 expat ffi fontconfig freetype gdk-3
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtk-x11-2.0 harfbuzz json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xkbfile xklavier xml2 z

MODULES=	devel/gettext \
		devel/dconf \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/py-gobject3 \
		lang/vala \
		textproc/libxslt

RUN_DEPENDS=	devel/py-gobject3

LIB_DEPENDS=	devel/libgee \
		graphics/clutter/core \
		x11/gnome/libxklavier \
		x11/gtk+2 \
		x11/gtk+3

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/caribou

post-install:
	rm ${PREFIX}/lib/gtk-{2,3}.0/modules/*.{a,la}

.include <bsd.port.mk>
