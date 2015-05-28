# $OpenBSD: Makefile,v 1.3 2015/05/28 10:17:31 pascal Exp $

COMMENT =	Strigi analyzers for development files
DISTNAME =	kdesdk-strigi-analyzers-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	devel textproc
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kdesdk-strigi-analyzers

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += streamanalyzer streams

MODKDE4_USE =	libs

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
