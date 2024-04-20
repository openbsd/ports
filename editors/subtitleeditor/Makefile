COMMENT=		GTK+ subtitles editor

V=			0.54.0
DISTNAME=		subtitleeditor-${V}
REVISION=		6

CATEGORIES=		graphics editors

SHARED_LIBS +=  subtitleeditor       0.0      # unknown

HOMEPAGE=		http://kitone.github.io/subtitleeditor/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender aspell
WANTLIB += atk-1.0 atk-bridge-2.0 atkmm-1.6 c cairo cairo-gobject
WANTLIB += cairomm-1.0 enchant-2 epoxy execinfo expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gstallocators-1.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstcheck-1.0 gstcontroller-1.0 gstfft-1.0
WANTLIB += gstnet-1.0 gstpbutils-1.0 gstreamer-1.0 gstreamermm-1.0
WANTLIB += gstriff-1.0 gstrtp-1.0 gstrtsp-1.0 gstsdp-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gtk-3 gtkmm-3.0 harfbuzz iconv intl jpeg
WANTLIB += lzma m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre2-8 pixman-1 png sigc-2.0 xcb xcb-render
WANTLIB += xcb-shm xml++-2.6 xml2 z

SITES=	https://github.com/kitone/subtitleeditor/releases/download/${V}/

BUILD_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		multimedia/gstreamer1/mm \
			multimedia/gstreamer1/plugins-base \
			textproc/enchant2 \
			textproc/libxml++ \
			x11/gtk3mm

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/iso-codes \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav \
			x11/gtk+4,-guic

MODULES=		textproc/intltool

# c++11
COMPILER =		base-clang ports-gcc

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.69

CONFIGURE_STYLE=	autoconf

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			CXXFLAGS="-std=c++11" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--with-default-video-sink=autovideosink \
			--with-default-audio-sink=autoaudiosink \
			--enable-ccache=no

post-install:
	rm ${PREFIX}/lib/subtitleeditor/plugins/*/*.{a,la}

.include <bsd.port.mk>
