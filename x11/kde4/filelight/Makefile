# $OpenBSD: Makefile,v 1.4 2013/12/08 19:13:29 zhuk Exp $

COMMENT =	KDE graphical equivalent of du
DISTNAME =	filelight-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/solid
WANTLIB += soprano

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
