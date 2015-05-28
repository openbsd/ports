# $OpenBSD: Makefile,v 1.5 2015/05/28 10:17:26 pascal Exp $

COMMENT =	language pronunciation improver
DISTNAME =	artikulate-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	education

HOMEPAGE =	http://edu.kde.org/applications/all/artikulate/

SHARED_LIBS =	artikulatecore			1.0
SHARED_LIBS +=	artikulatelearnerprofile	1.0
SHARED_LIBS +=	artikulatesound			0.0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += QtGLib-2.0 QtGStreamer-1.0
WANTLIB += ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3 ${KDE4LIB}/plasma

BUILD_DEPENDS =		devel/boost
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			${MODKDE4_DEP_DIR}/kqtquickcharts>=${MODKDE4_DEP_VERSION}
LIB_DEPENDS =		multimedia/qt-gstreamer

.include <bsd.port.mk>
