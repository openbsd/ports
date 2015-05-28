# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:29 pascal Exp $

COMMENT =	touch typing learning tool for KDE
DISTNAME =	ktouch-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext xkbfile
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtScript
WANTLIB += lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtXmlPatterns
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/plasma

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

.include <bsd.port.mk>
