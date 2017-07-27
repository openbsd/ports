# $OpenBSD: Makefile,v 1.9 2017/07/27 11:57:50 sthen Exp $

COMMENT =	common library for KDE-based games
CATEGORIES =	devel
DISTNAME =	libkdegames-${MODKDE4_VERSION}
REVISION =	1

SHARED_LIBS =	kdegames		51.0
SHARED_LIBS +=	kdegamesprivate		51.0

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtScript
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += openal sndfile

MODKDE4_USE =	libs

LIB_DEPENDS =	audio/openal \
		audio/libsndfile

.include <bsd.port.mk>
