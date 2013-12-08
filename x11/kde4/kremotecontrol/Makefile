# $OpenBSD: Makefile,v 1.5 2013/12/08 19:13:31 zhuk Exp $

COMMENT =	KDE frontend for remote controls
DISTNAME =	kremotecontrol-${MODKDE4_VERSION}

SHARED_LIBS =	libkremotecontrol	50.0 # 1.0

WANTLIB =  c m pthread stdc++
WANTLIB += X11 Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/plasma

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/workspace>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		${MODKDE4_DEP_DIR}/workspace>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
