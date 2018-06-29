# $OpenBSD: Makefile,v 1.15 2018/06/29 22:16:30 espie Exp $

COMMENT =	strategy game for KDE
DISTNAME =	ksirk-${MODKDE4_VERSION}
REVISION =	6

SHARED_LIBS =	iris_ksirk		51.0  # 4.10

WANTLIB =  c m pthread z
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdegamesprivate ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3
WANTLIB += qca

MODULES =	multimedia/phonon
MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	security/qca

.include <bsd.port.mk>
