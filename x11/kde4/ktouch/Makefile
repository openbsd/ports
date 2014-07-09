# $OpenBSD: Makefile,v 1.5 2014/07/09 20:03:28 zhuk Exp $

COMMENT =	touch typing learning tool for KDE
DISTNAME =	ktouch-${MODKDE4_VERSION}

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext xkbfile
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtScript
WANTLIB += lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/plasma

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
