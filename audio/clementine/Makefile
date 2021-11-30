# $OpenBSD: Makefile,v 1.51 2021/11/30 23:06:50 jca Exp $

COMMENT =	music player

GH_ACCOUNT =	clementine-player
GH_PROJECT =	Clementine
GH_TAGNAME =	1.4.0rc1-550-g72c1f91c0
REVISION =	1
PKGNAME =	clementine-${GH_TAGNAME:C/-550.*/pl550/}

CATEGORIES =	audio x11

HOMEPAGE =	https://www.clementine-player.org/

# GPLv2/LGPLv2/GFDL
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Network Qt5OpenGL Qt5Sql Qt5Widgets
WANTLIB += Qt5X11Extras Qt5Xml X11 Xext Xi Xmu c cdio chromaprint
WANTLIB += execinfo fftw3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gpod gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 iconv intl lastfm5
WANTLIB += m mtp mygpo-qt5 protobuf pulse sqlite3 tag z

# libplist from devel/libplist is dlopen'ed
WANTLIB += plist

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/boost \
			devel/gettext,-tools \
			devel/sparsehash

RUN_DEPENDS =		devel/desktop-file-utils \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/chromaprint \
			audio/libcdio \
			audio/libgpod \
			audio/liblastfm>=1.1.0 \
			audio/pulseaudio \
			audio/taglib \
			devel/libmtp \
			devel/libplist \
			devel/protobuf \
			graphics/glew \
			math/fftw3 \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			net/libmygpo-qt>=1.1.0 \
			x11/qt5/qtx11extras

TEST_DEPENDS =		${MODPY_BUILD_DEPENDS}

# Unported stuff
CONFIGURE_ARGS =	-DENABLE_SPOTIFY_BLOB=OFF

# stupidity
CONFIGURE_ARGS +=	-DBUILD_WERROR=ON

# XXX Builds tend to sometimes omit projectM presets when this option
# is missing. To be investigated.
CONFIGURE_ARGS +=	-DBUNDLE_PROJECTM_PRESETS=ON

post-extract:
	cp ${FILESDIR}/config.h.in ${WRKSRC}/ext/libclementine-common/

.include <bsd.port.mk>
