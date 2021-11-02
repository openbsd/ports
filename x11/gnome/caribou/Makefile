# $OpenBSD: Makefile,v 1.53 2021/11/02 00:02:57 sthen Exp $

COMMENT-main=		input assistive technology
COMMENT-gtk2=		caribou module for GTK2

GNOME_PROJECT=		caribou
GNOME_VERSION=		0.4.21

PKGNAME-main=		caribou-${GNOME_VERSION}
PKGNAME-gtk2=		caribou-gtk2-${GNOME_VERSION}
REVISION-gtk2=		0

REVISION-main=		8

SHARED_LIBS +=  caribou              0.0      # 0.0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -gtk2

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat
WANTLIB += ffi fontconfig freetype fribidi gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png xcb xcb-render xcb-shm z

WANTLIB-main += ${WANTLIB}
WANTLIB-main += EGL X11-xcb Xau Xdmcp Xtst atk-bridge-2.0 atspi c cairo-gobject
WANTLIB-main += clutter-1.0 cogl cogl-pango cogl-path dbus-1 drm epoxy
WANTLIB-main += gbm gdk-3 gee-0.8 glapi gthread-2.0 gtk-3 json-glib-1.0
WANTLIB-main += lzma xcb-dri2 xcb-dri3 xcb-present xcb-sync xcb-xfixes
WANTLIB-main += xkbfile xklavier xml2 xshmfence

WANTLIB-gtk2 += ${WANTLIB}
WANTLIB-gtk2 += gdk-x11-2.0 gtk-x11-2.0

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		vala

BUILD_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			textproc/libxslt

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			devel/py-gobject3${MODPY_FLAVOR}

RUN_DEPENDS-gtk2=	# empty

LIB_DEPENDS-main=	devel/libgee \
			graphics/clutter/core \
			x11/gnome/libxklavier \
			x11/gtk+3

LIB_DEPENDS-gtk2=	x11/gtk+2

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/caribou

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/gtk-{2,3}.0/modules/*.{a,la}

.include <bsd.port.mk>
