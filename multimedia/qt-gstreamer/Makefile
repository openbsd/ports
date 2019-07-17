# $OpenBSD: Makefile,v 1.16 2019/07/17 14:46:33 danj Exp $

COMMENT =	Qt bindings to GStreamer 1.x

DISTNAME =	qt-gstreamer-1.2.0
REVISION =	7

SHARED_LIBS =   QtGLib-2.0                1.0 # 0.10
SHARED_LIBS +=  QtGStreamer-1.0           0.0 # 1.0
SHARED_LIBS +=  QtGStreamerUi-1.0         0.0 # 1.0
SHARED_LIBS +=  QtGStreamerUtils-1.0      0.0 # 1.0

CATEGORIES =	multimedia devel

HOMEPAGE =	http://gstreamer.freedesktop.org/modules/qt-gstreamer.html

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB =  GL m
WANTLIB += lib/qt4/QtCore lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 ${COMPILER_LIBCXX}

MASTER_SITES =		http://gstreamer.freedesktop.org/src/qt-gstreamer/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake x11/qt4
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base

TEST_IS_INTERACTIVE =	X11
CONFIGURE_ARGS =	-DQTGSTREAMER_TESTS=Yes \
			-DQT_VERSION=4

.include <bsd.port.mk>
