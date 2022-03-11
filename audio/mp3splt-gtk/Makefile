COMMENT=	graphical mp3/ogg file splitter

DISTNAME=	mp3splt-gtk-0.9.2

CATEGORIES=	audio

HOMEPAGE=	http://mp3splt.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gstreamer-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz iconv intl ltdl m mp3splt pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3splt/}

LIB_DEPENDS=	audio/libmp3splt \
		devel/atk \
		devel/glib2 \
		devel/pango \
		graphics/cairo \
		multimedia/gstreamer1/core

BUILD_DEPENDS=	multimedia/gstreamer1/plugins-base

RUN_DEPENDS=	devel/desktop-file-utils \
		multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-good

CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}
CONFIGURE_ARGS=	--enable-gstreamer \
		--disable-audacious \
		--disable-doxygen_doc \
		--disable-gnome

.include <bsd.port.mk>
