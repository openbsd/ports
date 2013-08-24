# $OpenBSD: Makefile,v 1.4 2013/08/24 17:33:48 zhuk Exp $

COMMENT =	common library for Mah Jongg-based KDE games
DISTNAME =	libkmahjongg-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kmahjongglib		50.0 # 4.10

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games libs

.include <bsd.port.mk>
