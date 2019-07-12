# $OpenBSD: Makefile,v 1.60 2019/07/12 20:46:06 sthen Exp $

COMMENT=		GTK+ subtitles editor

V=			0.54.0
DISTNAME=		subtitleeditor-${V}
REVISION=		1

CATEGORIES=		graphics editors

SHARED_LIBS +=  subtitleeditor 0.0     # .0.0

HOMEPAGE=		http://kitone.github.io/subtitleeditor/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atkmm-1.6 atspi c cairo cairo-gobject cairomm-1.0 dbus-1
WANTLIB += enchant epoxy expat ffi fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 graphite2 gstallocators-1.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstcheck-1.0 gstcontroller-1.0
WANTLIB += gstfft-1.0 gstnet-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gstreamermm-1.0 gstriff-1.0 gstrtp-1.0 gstrtsp-1.0
WANTLIB += gstsdp-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += gtkmm-3.0 harfbuzz iconv intl lzma m orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre pixman-1
WANTLIB += png sigc-2.0 xcb xcb-render xcb-shm xml++-2.6 xml2
WANTLIB += z

MASTER_SITES=		https://github.com/kitone/subtitleeditor/releases/download/${V}/

BUILD_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		multimedia/gstreamer1/mm \
			multimedia/gstreamer1/plugins-base \
			textproc/enchant \
			textproc/libxml++ \
			x11/gtk3mm

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/iso-codes \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav \
			x11/gtk+3,-guic

MODULES=		textproc/intltool

# c++11
COMPILER =		base-clang ports-gcc

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			CXXFLAGS="-std=c++11" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--with-default-video-sink=autovideosink \
			--with-default-audio-sink=autoaudiosink \
			--enable-ccache=no

post-install:
	rm ${PREFIX}/lib/subtitleeditor/plugins/*/*.{a,la}

.include <bsd.port.mk>
