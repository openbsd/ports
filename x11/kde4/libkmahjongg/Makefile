# $OpenBSD: Makefile,v 1.6 2013/12/08 19:13:32 zhuk Exp $

COMMENT =	common library for Mah Jongg-based KDE games
CATEGORIES =	devel
DISTNAME =	libkmahjongg-${MODKDE4_VERSION}

SHARED_LIBS =	kmahjongglib		50.1 # 4.10

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games libs

RUN_DEPENDS =	${MODKDE4_DEP_DIR}/libkdegames>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
