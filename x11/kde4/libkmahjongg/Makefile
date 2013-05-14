# $OpenBSD: Makefile,v 1.2 2013/05/14 09:16:28 zhuk Exp $

COMMENT =	common library for Mah Jongg-based KDE games
DISTNAME =	libkmahjongg-${MODKDE4_VERSION}

SHARED_LIBS =	kmahjongglib		50.0 # 4.10

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games libs

.include <bsd.port.mk>
