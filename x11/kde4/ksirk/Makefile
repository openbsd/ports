# $OpenBSD: Makefile,v 1.10 2015/05/28 10:17:29 pascal Exp $

COMMENT =	strategy game for KDE
DISTNAME =	ksirk-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	iris_ksirk		51.0  # 4.10

WANTLIB =  c m pthread z
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdegamesprivate ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3
WANTLIB += qca2

MODULES =	multimedia/phonon
MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	security/qca2

.include <bsd.port.mk>
