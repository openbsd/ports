# $OpenBSD: Makefile,v 1.96 2019/07/07 11:20:54 ajacoutot Exp $

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.32.2

API_SUFFIX=		-4
SUBST_VARS=		API_SUFFIX

SHARED_LIBS += mutter-cogl-4             0.0 # 0.0.0
SHARED_LIBS += mutter-cogl-gles2-4       0.0 # 0.0.0
SHARED_LIBS += mutter-cogl-path-4        0.0 # 0.0.0
SHARED_LIBS += mutter-cogl-pango-4       0.0 # 0.0.0
SHARED_LIBS += mutter-clutter-4          0.0 # 0.0.0
SHARED_LIBS += mutter-4                  0.0 # 0.0.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst atk-1.0
WANTLIB += c cairo cairo-gobject canberra fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 gtk-3 intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread startup-notification-1 xcb xcb-randr
WANTLIB += xcb-res xkbcommon xkbcommon-x11 xkbfile z

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection

LIB_DEPENDS=		audio/libcanberra \
			devel/startup-notification \
			x11/gnome/desktop \
			x11/xkbcommon

BUILD_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/settings-daemon \
			x11/gnome/zenity

RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/settings-daemon \
			x11/gnome/zenity

# Required by embedded cogl/clutter forks.
CONFIGURE_ARGS +=	-Dsm=true

# cogl
CONFIGURE_ARGS +=	-Dopengl_libname=libGL.so \
			-Dgles2_libname=libGLESv2 \
			-Dudev=false \
			-Dwayland=false \
			-Dlibwacom=false \
			-Dnative_backend=false \
			-Dtests=false
# requires unported pipewire
CONFIGURE_ARGS +=	-Dremote_desktop=false

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

# XXX
# Generate this file upfront as it may not be created in time
# due to ninja's randomization
pre-build:
	exec ${SETENV} ${MAKE_ENV} \
		${LOCALBASE}/bin/ninja -C ${WRKBUILD} -v cogl/cogl-path/cogl-path-enum-types.h

.include <bsd.port.mk>
