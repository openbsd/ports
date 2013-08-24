# $OpenBSD: Makefile,v 1.3 2013/08/24 17:33:41 zhuk Exp $

COMMENT =	graphical floppy format utility for KDE
DISTNAME =	kfloppy-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/Qt3Support lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
