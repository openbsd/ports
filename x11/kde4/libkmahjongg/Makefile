# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 18:28:34 zhuk Exp $

COMMENT =	common library for Mah Jongg-based KDE games
DISTNAME =	libkmahjongg-${MODKDE4_VERSION}

SHARED_LIBS =	kmahjongglib		0.0 # 4.10

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games libs

.include <bsd.port.mk>
