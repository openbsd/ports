# $OpenBSD: Makefile,v 1.3 2013/06/06 08:36:49 zhuk Exp $

COMMENT =	common library for Mah Jongg-based KDE games
DISTNAME =	libkmahjongg-${MODKDE4_VERSION}

SHARED_LIBS =	kmahjongglib		50.0 # 4.10

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games libs

.include <bsd.port.mk>
