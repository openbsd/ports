# $OpenBSD: Makefile,v 1.27 2017/07/26 22:45:15 sthen Exp $

COMMENT =	Qt4-based featureful music player

V =		1.2.3
DISTNAME =	clementine-${V}
CATEGORIES =	audio x11
REVISION =	8

HOMEPAGE =	http://clementine-player.org/

MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>
MASTER_SITES =	https://github.com/clementine-player/Clementine/archive/
DISTFILES =	${PKGNAME}.tar.gz{${V}.tar.gz}
WRKDIST =	${WRKDIR}/Clementine-${V}

# GPLv2/LGPLv2/GFDL
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =  c m pthread z
WANTLIB += GL GLU GLEW ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSql lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gstapp-0.10 gstbase-0.10 gstcdda-0.10 gstreamer-0.10
WANTLIB += gsttag-0.10
WANTLIB += cdio chromaprint gpod execinfo fftw3 lastfm mtp mygpo-qt
WANTLIB += protobuf qca qjson tag>=5.0 usb-1.0 xml2 ${COMPILER_LIBCXX}
# those are dlopen'ed
WANTLIB += plist

MODULES =		devel/cmake devel/gettext x11/qt4
COMPILER =		gcc

BUILD_DEPENDS =		devel/boost \
			devel/cmake>=2.8.10.2p3 \
			devel/sparsehash

RUN_DEPENDS =		devel/desktop-file-utils \
			multimedia/gstreamer-0.10/plugins-good \
			multimedia/gstreamer-0.10/plugins-ffmpeg \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/chromaprint \
			audio/libcdio \
			audio/libgpod \
			audio/liblastfm \
			audio/taglib>=1.4 \
			devel/libexecinfo \
			devel/libmtp \
			devel/libplist \
			devel/libusb1 \
			devel/protobuf \
			devel/qjson \
			graphics/glew \
			math/fftw3 \
			multimedia/gstreamer-0.10/core \
			multimedia/gstreamer-0.10/plugins-base \
			net/libmygpo-qt \
			security/qca

TEST_DEPENDS =		${MODPY_BUILD_DEPENDS}

# Unported stuff
CONFIGURE_ARGS =	-DENABLE_SOUNDMENU:Bool=Off \
			-DENABLE_SPOTIFY_BLOB:Bool=Off

# It's advised by Google to use bundled GTest and GMock
CONFIGURE_ARGS +=	-DFORCE_BUNDLED_GMOCK=Yes

# Use system SQLite
# XXX Currently not possible, because devel/sqlite3 is built without
# -DSQLITE_ENABLE_FTS3_TOKENIZER.
#CONFIGURE_ARGS +=	-DSTATIC_SQLITE:Bool=No \
#			-DI_HATE_MY_USERS:Bool=Yes \
#			-DMY_USERS_WILL_SUFFER_BECAUSE_OF_ME:Bool=Yes

# stupidity
CONFIGURE_ARGS +=	-DBUILD_WERROR:Bool=No

# XXX Builds tend to sometimes omit projectM presets when this option
# is missing. To be investigated.
CONFIGURE_ARGS +=	-DBUNDLE_PROJECTM_PRESETS:Bool=Yes

post-extract:
	cp ${FILESDIR}/config.h.in ${WRKSRC}/ext/libclementine-common/

.include <bsd.port.mk>
