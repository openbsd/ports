# $OpenBSD: Makefile,v 1.80 2017/12/27 12:42:33 ajacoutot Exp $

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.26.2
REVISION=		0

API_SUFFIX=		-1
SUBST_VARS=		API_SUFFIX

SHARED_LIBS +=  mutter-1                    0.0 # 0.0

### drop this block at next release
MASTER_SITES0=		https://git.gnome.org/browse/mutter/patch/?id=
PATCH_DIST_STRIP=	-p1
PATCHFILES=		cc311dc8e68698a25c05d6020a13a8af44e14799:0 \
			2882ddec7b482bf65726c42350a5cf70f543860c:0 \
			74e88dd18f2d66d8ab861dacfab3e1ba07065ac5:0 \
			ed989a2989fbfe540f3b80f52a0828983ddbc003:0 \
			ea538537ec2d3d2e58b4a301572de2eac3686c93:0 \
			205dc28eae33fa8278bf1a32827023c600a79d20:0 \
			bf91e2b4ca1ef8b0478d1edec46bd33065457153:0 \
			827d0b3f7f124389899e65df62b61b9c70ba8a7e:0 \
			7ef3ed0f8234867013e2ecb5d4ba6de493fcea3a:0 \
			415584344a5d4b577321616f1ddeb4c4536253bc:0
### EOB

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject canberra
WANTLIB += canberra-gtk3 dbus-1 drm epoxy expat ffi fontconfig
WANTLIB += freetype gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl json-glib-1.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread startup-notification-1
WANTLIB += upower-glib vorbis vorbisfile xcb xcb-dri2 xcb-randr
WANTLIB += xcb-render xcb-res xcb-shm xcb-util xcb-xfixes xcb-xkb
WANTLIB += xkbcommon xkbcommon-x11 xkbfile z Xtst

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/startup-notification \
			devel/gobject-introspection \
			x11/gnome/desktop \
			x11/xkbcommon \
			sysutils/upower

BUILD_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/zenity

RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/zenity

AUTOMAKE_VERSION=	1.15
AUTOCONF_VERSION=	2.69
AUTOCONF_DIR=		${WRKSRC} ${WRKSRC}/clutter
CONFIGURE_STYLE=	autoconf automake

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

pre-configure:
# XXX cc1: error: unrecognized command line option
# XXX more: clang finds more issues!
	sed -i -e 's,-Wempty-body,,' \
		-e 's,-Werror=maybe-uninitialized,,' \
		-e 's,-Wno-error=maybe-uninitialized,,' \
		-e 's,-Werror=redundant-decls,,' \
		-e 's,-Werror=format-nonliteral,,' \
		-e 's,-Wvla,,' \
		${WRKSRC}/{,cogl,clutter}/configure{,.ac} \
		${WRKSRC}/cogl/tests/conform/Makefile.in \
		${WRKSRC}/cogl/test-fixtures/Makefile.in

.include <bsd.port.mk>
