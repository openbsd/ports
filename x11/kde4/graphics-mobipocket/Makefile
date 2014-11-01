# $OpenBSD: Makefile,v 1.9 2014/11/01 21:09:40 zhuk Exp $

COMMENT =	KDE mobipocket plugins for Strigi, Okular and thumbnails
DISTNAME =	kdegraphics-mobipocket-${MODKDE4_VERSION}

SHARED_LIBS =	qmobipocket	0.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += streamanalyzer streams

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
