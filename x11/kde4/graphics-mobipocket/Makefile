# $OpenBSD: Makefile,v 1.8 2014/08/12 00:41:00 zhuk Exp $

COMMENT =	KDE mobipocket plugins for Strigi, Okular and thumbnails
DISTNAME =	kdegraphics-mobipocket-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	qmobipocket	0.0

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += streamanalyzer streams

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
