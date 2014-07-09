# $OpenBSD: Makefile,v 1.1.1.1 2014/07/09 10:41:13 zhuk Exp $

SHARED_ONLY =	Yes
COMMENT =	Qt bindings to GStreamer 0.10

DISTNAME =	qt-gstreamer-0.10.3

SHARED_LIBS =   QtGLib-2.0                0.0 # 0.10
SHARED_LIBS +=  QtGStreamer-0.10          0.0 # 0.10
SHARED_LIBS +=  QtGStreamerUi-0.10        0.0 # 0.10
SHARED_LIBS +=  QtGStreamerUtils-0.10     0.0 # 0.10

CATEGORIES =	multimedia devel

HOMEPAGE =	http://gstreamer.freedesktop.org/modules/qt-gstreamer.html

MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  GL m
WANTLIB += lib/qt4/QtCore lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gstapp-0.10 gstbase-0.10 gstinterfaces-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10

MASTER_SITES =		http://gstreamer.freedesktop.org/src/qt-gstreamer/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake gcc4 x11/qt4
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*

BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		multimedia/gstreamer-0.10/core

TEST_IS_INTERACTIVE =	X11
CONFIGURE_ARGS =	-DQTGSTREAMER_TESTS=Yes

.include <bsd.port.mk>
