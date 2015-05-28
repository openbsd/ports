# $OpenBSD: Makefile,v 1.6 2015/05/28 10:17:31 pascal Exp $

COMMENT =	development-related KIO modules
DISTNAME =	kdesdk-kioslaves-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	devel
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kdesdk-kioslaves

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += apr-1 svn_client-1 svn_delta-1 svn_fs-1 svn_ra-1 svn_subr-1
WANTLIB +=

MODKDE4_USE =	libs

RUN_DEPENDS =	x11/gtk+3,-guic

LIB_DEPENDS =	devel/subversion

post-patch:
	perl -pi -e 's/kio_svn_helper/kio_svn_helper4/' \
		${WRKSRC}/svn/svnhelper/*.desktop

.include <bsd.port.mk>
