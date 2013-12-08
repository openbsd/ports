# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:17:07 zhuk Exp $

COMMENT =	Strigi analyzers of network-related streams for KDE
DISTNAME =	kdenetwork-strigi-analyzers-${MODKDE4_VERSION}

CATEGORIES =	network devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/kdenetwork-strigi-analyzers

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus
WANTLIB += streamanalyzer streams

MODKDE4_USE =	libs

BUILD_DEPENDS = devel/boost

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
