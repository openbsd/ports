# $OpenBSD: Makefile,v 1.35 2015/04/15 09:40:52 ajacoutot Exp $

COMMENT=		input assistive technology

GNOME_PROJECT=		caribou
GNOME_VERSION=		0.4.18.1
REVISION=		0

SHARED_LIBS +=  caribou                   0.0 # 0.0

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject clutter-1.0
WANTLIB += cogl cogl-pango cogl-path dbus-1 drm epoxy expat ffi
WANTLIB += fontconfig freetype gbm gdk-3 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 gtk-x11-2.0 harfbuzz json-glib-1.0
WANTLIB += lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-dri2 xcb-render xcb-shape
WANTLIB += xcb-shm xcb-xfixes xkbfile xklavier xml2 z

MODULES=		devel/gettext \
			devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-gobject3 \
			lang/vala \
			textproc/libxslt

RUN_DEPENDS=		devel/py-gobject3

LIB_DEPENDS=		devel/libgee \
			graphics/clutter/core \
			x11/gnome/libxklavier \
			x11/gtk+2 \
			x11/gtk+3

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/caribou

post-install:
	rm ${PREFIX}/lib/gtk-{2,3}.0/modules/*.{a,la}

.include <bsd.port.mk>
