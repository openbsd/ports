# $OpenBSD: Makefile,v 1.3 2015/04/12 18:17:18 zhuk Exp $

COMMENT =	Strigi analyzers of network-related streams for KDE
DISTNAME =	kdenetwork-strigi-analyzers-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	net devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/kdenetwork-strigi-analyzers

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus
WANTLIB += streamanalyzer streams

MODKDE4_USE =	libs

BUILD_DEPENDS = devel/boost

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
