# $OpenBSD: Makefile,v 1.1.1.1 2013/02/05 14:00:16 zhuk Exp $

SHARED_ONLY =	Yes
CATEGORIES =	audio x11
COMMENT =	Qt4-based heavy featured music player
DISTNAME =	clementine-1.1.1
HOMEPAGE =	http://clementine-player.org/

MAINTAINER =	Vadim Zhukov <persgray@gmail.com>
MASTER_SITES =	http://clementine-player.googlecode.com/files/

# GPLv2/LGPLv2/GFDL
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =  c m pthread stdc++ z
WANTLIB += GL GLU GLEW ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSql lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gstapp-0.10 gstbase-0.10 gstcdda-0.10 gstreamer-0.10
WANTLIB += gsttag-0.10
WANTLIB += cdio chromaprint lastfm mtp protobuf-lite qca2
WANTLIB += qjson tag>=5.0 usb-1.0 xml2

MODULES =		devel/cmake devel/gettext x11/qt4

BUILD_DEPENDS =		devel/boost \
			devel/sparsehash

RUN_DEPENDS =		devel/desktop-file-utils \
			multimedia/gstreamer-0.10/plugins-ugly \
			x11/gtk+2,-guic

LIB_DEPENDS =		audio/chromaprint \
			audio/taglib>=1.4 \
			audio/libcdio \
			audio/libnjb \
			audio/liblastfm \
			devel/libmtp \
			devel/libplist \
			devel/libusb1 \
			devel/protobuf \
			devel/qjson \
			graphics/ffmpeg \
			graphics/glew \
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

.include <bsd.port.mk>
