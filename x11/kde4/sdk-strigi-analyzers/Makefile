# $OpenBSD: Makefile,v 1.4 2017/07/27 11:57:50 sthen Exp $

COMMENT =	Strigi analyzers for development files
DISTNAME =	kdesdk-strigi-analyzers-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	devel textproc
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kdesdk-strigi-analyzers

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += streamanalyzer streams

MODKDE4_USE =	libs

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
