# $OpenBSD: Makefile,v 1.4 2013/08/24 17:33:48 zhuk Exp $

COMMENT =	common library for KDE-based games
DISTNAME =	libkdegames-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	kdegames		50.0
SHARED_LIBS +=	kdegamesprivate		50.0

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3
WANTLIB += openal sndfile

MODKDE4_USE =	libs

LIB_DEPENDS =	audio/openal \
		audio/libsndfile

.include <bsd.port.mk>
