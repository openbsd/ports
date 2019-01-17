# $OpenBSD: Makefile,v 1.88 2019/01/17 16:13:15 jasper Exp $

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.30.2

API_SUFFIX=		-3
SUBST_VARS=		API_SUFFIX

SHARED_LIBS +=  mutter-3                    0.0 # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += atk-1.0 atk-bridge-2.0 c cairo cairo-gobject canberra
WANTLIB += canberra-gtk3 drm epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl json-glib-1.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png16 pthread startup-notification-1 vorbis
WANTLIB += vorbisfile xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present
WANTLIB += xcb-randr xcb-render xcb-res xcb-shm xcb-sync xcb-util
WANTLIB += xcb-xfixes xcb-xkb xkbcommon xkbcommon-x11 xkbfile
WANTLIB += xshmfence z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/startup-notification \
			devel/gobject-introspection \
			x11/gnome/desktop \
			x11/xkbcommon

BUILD_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/zenity

RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/zenity

CONFIGURE_STYLE=	gnu

# Required by embedded cogl/clutter forks.
CONFIGURE_ARGS +=	--with-x
# cogl
CONFIGURE_ARGS +=       --with-gl-libname=libGL.so \
                        --with-gles1-libname=libGLESv1_CM \
                        --with-gles2-libname=libGLESv2 \
                        --enable-kms-egl-platform=yes \
                        --enable-xlib-egl-platform=yes \
			--disable-wayland-egl-server

# disable -Werror which breaks at least hppa/mips64/sparc64
CONFIGURE_ARGS +=	--enable-compile-warnings=yes

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

AUTOMAKE_VERSION=	1.15
AUTOCONF_VERSION=	2.69
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/cogl ${WRKSRC}/clutter
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

do-gen:
# XXX cc1: error: unrecognized command line option
	sed -i -e 's,-Wempty-body,,' \
		-e 's,-Wno-error=maybe-uninitialized,,' \
		-e 's,-Werror=logical-op,,' \
		${WRKSRC}/{,cogl,clutter}/configure.ac \
		${WRKSRC}/cogl/tests/conform/Makefile.am \
		${WRKSRC}/cogl/test-fixtures/Makefile.am
	cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} autoreconf -fi

.include <bsd.port.mk>
