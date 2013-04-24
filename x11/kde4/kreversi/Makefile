# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:19:37 zhuk Exp $

COMMENT =	Go-like board game for KDE
DISTNAME =	kreversi-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games

.include <bsd.port.mk>
