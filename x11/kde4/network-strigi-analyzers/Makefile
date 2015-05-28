# $OpenBSD: Makefile,v 1.4 2015/05/28 10:17:30 pascal Exp $

COMMENT =	Strigi analyzers of network-related streams for KDE
DISTNAME =	kdenetwork-strigi-analyzers-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	net devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/kdenetwork-strigi-analyzers

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus
WANTLIB += streamanalyzer streams

MODKDE4_USE =	libs

BUILD_DEPENDS = devel/boost

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
