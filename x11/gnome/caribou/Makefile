# $OpenBSD: Makefile,v 1.9 2012/10/02 06:31:37 ajacoutot Exp $

COMMENT=	input assistive technology

GNOME_PROJECT=	caribou
GNOME_VERSION=	0.4.4
REVISION=	1

SHARED_LIBS +=  caribou                   0.0 # 0.0

HOMEPAGE=	https://live.gnome.org/Caribou/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject dbus-1
WANTLIB += drm expat ffi fontconfig freetype gdk-3 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gee gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtk-x11-2.0 harfbuzz icudata icule
WANTLIB += icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm xkbfile xklavier xml2 z

MODULES=	devel/gettext \
		devel/dconf \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/py-gobject3

# configure checks for it; but it isn't really used
BUILD_DEPENDS += graphics/clutter/core

RUN_DEPENDS=	devel/py-gobject3>=3.2.2p0 \
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
	rm ${PREFIX}/lib/gtk-{2,3}.0/modules/*.la

.include <bsd.port.mk>
