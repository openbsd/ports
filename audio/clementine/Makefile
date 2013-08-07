# $OpenBSD: Makefile,v 1.8 2013/08/07 21:31:13 naddy Exp $

SHARED_ONLY =	Yes

COMMENT =	Qt4-based featureful music player

DISTNAME =	clementine-1.1.1
REVISION =	3
CATEGORIES =	audio x11

HOMEPAGE =	http://clementine-player.org/

MAINTAINER =	Vadim Zhukov <persgray@gmail.com>
MASTER_SITES =	https://clementine-player.googlecode.com/files/

# GPLv2/LGPLv2/GFDL
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =  c m pthread stdc++ z
WANTLIB += GL GLU GLEW ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSql lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gstapp-0.10 gstbase-0.10 gstcdda-0.10 gstreamer-0.10
WANTLIB += gsttag-0.10
WANTLIB += cdio chromaprint execinfo fftw3 lastfm mtp protobuf-lite qca2
WANTLIB += qjson tag>=5.0 usb-1.0 xml2
# those are dlopen'ed
WANTLIB += plist

MODULES =		devel/cmake devel/gettext x11/qt4

BUILD_DEPENDS =		devel/boost \
			devel/cmake>=2.8.10.2p3 \
			devel/sparsehash

RUN_DEPENDS =		devel/desktop-file-utils \
			multimedia/gstreamer-0.10/plugins-ugly \
			x11/gtk+2,-guic

LIB_DEPENDS =		audio/chromaprint \
			audio/taglib>=1.4 \
			audio/libcdio \
			devel/libexecinfo \
			audio/liblastfm \
			devel/libmtp \
			devel/libplist \
			devel/libusb1 \
			devel/protobuf \
			devel/qjson \
			graphics/glew \
			math/fftw3 \
			multimedia/gstreamer-0.10/core \
			multimedia/gstreamer-0.10/plugins-base \
			security/qca2

# Requires audio/libgpod update, disable to avoid picking by accident
CONFIGURE_ARGS =	-DENABLE_LIBGPOD:Bool=No \
			-DENABLE_IMOBILEDEVICE:Bool=No

# Crash reporting
CONFIGURE_ARGS +=	-DENABLE_BREAKPAD:Bool=No

# Unported stuff
CONFIGURE_ARGS +=	-DENABLE_SOUNDMENU:Bool=No

# XXX Builds tend to sometimes omit projectM presets when this option
# is missing. To be investigated.
CONFIGURE_ARGS +=	-DBUNDLE_PROJECTM_PRESETS:Bool=Yes

post-extract:
	cp ${FILESDIR}/config.h.in ${WRKSRC}/ext/libclementine-common/

.include <bsd.port.mk>
