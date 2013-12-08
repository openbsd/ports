# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:20:31 zhuk Exp $

COMMENT =	development-related KIO modules
DISTNAME =	kdesdk-kioslaves-${MODKDE4_VERSION}

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kdesdk-kioslaves

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += apr-1 svn_client-1 svn_delta-1 svn_fs-1 svn_ra-1 svn_subr-1
WANTLIB +=

MODKDE4_USE =	libs

RUN_DEPENDS =	x11/gtk+2,-guic

LIB_DEPENDS =	devel/subversion

.include <bsd.port.mk>
