# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:30:36 zhuk Exp $

COMMENT =	strategy game for KDE
DISTNAME =	ksirk-${MODKDE4_VERSION}

SHARED_LIBS =	iris_ksirk		0.0  # 4.10

WANTLIB =  c m pthread stdc++ z
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdegamesprivate ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3
WANTLIB += qca2

MODULES =	multimedia/phonon
MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	security/qca2

.include <bsd.port.mk>
