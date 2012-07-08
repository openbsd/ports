# $OpenBSD: Makefile,v 1.2 2012/07/08 14:36:46 ajacoutot Exp $

COMMENT=	input assistive technology

GNOME_PROJECT=	caribou
GNOME_VERSION=	0.4.2
REVISION=	0

SHARED_LIBS +=  caribou                   0.0 # 0.0

HOMEPAGE=	https://live.gnome.org/Caribou/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xtst Xxf86vm atk-1.0 cairo
WANTLIB += cairo-gobject drm expat ffi fontconfig freetype gdk-3
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gee gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm xkbfile xklavier xml2
WANTLIB += z

MODULES=	devel/gettext \
		devel/dconf \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/py-gobject3

RUN_DEPENDS=	devel/py-gobject3 \
		x11/gnome/py-atspi

LIB_DEPENDS=	devel/libgee06 \
		x11/gnome/libxklavier \
		x11/gtk+3 \
		x11/gtk+2

MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS=	--tag=disable-static

MODPY_ADJ_FILES=tools/fix_gir.py \
		tools/make_schema.py

CONFIGURE_ARGS=	--disable-static \
		--enable-gtk3-module \
		--enable-gtk2-module

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/caribou

# XXX until they come up with a proper icon
post-install:
	echo "NoDisplay=true" >> ${PREFIX}/share/applications/caribou.desktop

.include <bsd.port.mk>
