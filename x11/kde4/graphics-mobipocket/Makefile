# $OpenBSD: Makefile,v 1.10 2015/05/28 10:17:26 pascal Exp $

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
