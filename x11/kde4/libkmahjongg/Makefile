# $OpenBSD: Makefile,v 1.9 2017/07/27 11:57:50 sthen Exp $

COMMENT =	common library for Mah Jongg-based KDE games
CATEGORIES =	devel
DISTNAME =	libkmahjongg-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	kmahjongglib		50.1 # 4.10

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui

MODKDE4_USE =	games libs

RUN_DEPENDS =	${MODKDE4_DEP_DIR}/libkdegames>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
