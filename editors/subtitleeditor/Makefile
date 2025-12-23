COMMENT=		GTK subtitles editor

DIST_TUPLE=		github subtitleeditor subtitleeditor 0.55.0 .

CATEGORIES=		graphics editors

SHARED_LIBS +=  subtitleeditor       0.0      # unknown

HOMEPAGE=		https://subtitleeditor.github.io/subtitleeditor/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender aspell
WANTLIB += atk-1.0 atk-bridge-2.0 atkmm-1.6 atspi c cairo cairo-gobject
WANTLIB += cairomm-1.0 dbus-1 drm enchant-2 epoll-shim epoxy execinfo
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstcheck-1.0 gstcontroller-1.0
WANTLIB += gstfft-1.0 gstnet-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstreamermm-1.0 gstriff-1.0 gstrtp-1.0 gstrtsp-1.0
WANTLIB += gstsdp-1.0 gsttag-1.0 gstvideo-1.0 gtk-3 gtkmm-3.0
WANTLIB += harfbuzz iconv intl jpeg m orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre2-8 pixman-1 png sigc-2.0
WANTLIB += wayland-client wayland-cursor wayland-egl xcb xcb-render
WANTLIB += xcb-shm xkbcommon xml++-2.6 xml2 z

BUILD_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		multimedia/gstreamer1/mm \
			multimedia/gstreamer1/plugins-base \
			textproc/enchant2 \
			textproc/libxml++ \
			x11/gtk3mm

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/iso-codes \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/libav \
			x11/gtk+4,-guic

MODULES=		textproc/intltool

# c++14
COMPILER =		base-clang ports-gcc

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--with-default-video-sink=autovideosink \
			--with-default-audio-sink=autoaudiosink \
			--enable-ccache=no

post-install:
	rm ${PREFIX}/lib/subtitleeditor/plugins/*/*.{a,la}

.include <bsd.port.mk>
