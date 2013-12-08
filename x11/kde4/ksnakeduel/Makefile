# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:31 zhuk Exp $

COMMENT =	two-players games based on Snake and Tron for KDE
DISTNAME =	ksnakeduel-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdegamesprivate ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/knotifyconfig

MODKDE4_USE =	games

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
