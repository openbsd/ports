# $OpenBSD: Makefile,v 1.89 2019/01/18 01:24:19 ajacoutot Exp $

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.30.2
REVISION=		0

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
			--disable-wayland-egl-server \
			--enable-compile-warnings=yes \
			--disable-Werror

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/cogl ${WRKSRC}/clutter

.include <bsd.port.mk>
