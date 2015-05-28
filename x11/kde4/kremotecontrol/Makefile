# $OpenBSD: Makefile,v 1.9 2015/05/28 10:17:29 pascal Exp $

COMMENT =	KDE frontend for remote controls
DISTNAME =	kremotecontrol-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	libkremotecontrol	50.0 # 1.0

WANTLIB =  c m pthread
WANTLIB += X11 Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/plasma

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/workspace

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic \
		${MODKDE4_DEP_DIR}/workspace>=${MIN_WORKSPACE_VERSION}

.include <bsd.port.mk>
