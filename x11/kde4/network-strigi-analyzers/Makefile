# $OpenBSD: Makefile,v 1.5 2017/07/27 11:57:50 sthen Exp $

COMMENT =	Strigi analyzers of network-related streams for KDE
DISTNAME =	kdenetwork-strigi-analyzers-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	net devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/kdenetwork-strigi-analyzers

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus
WANTLIB += streamanalyzer streams

MODKDE4_USE =	libs

BUILD_DEPENDS = devel/boost

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
