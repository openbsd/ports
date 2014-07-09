# $OpenBSD: Makefile,v 1.7 2014/07/09 20:03:29 zhuk Exp $

COMMENT =	common library for Mah Jongg-based KDE games
CATEGORIES =	devel
DISTNAME =	libkmahjongg-${MODKDE4_VERSION}

SHARED_LIBS =	kmahjongglib		50.1 # 4.10

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games libs

RUN_DEPENDS =	${MODKDE4_DEP_DIR}/libkdegames>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
