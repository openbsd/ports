# $OpenBSD: Makefile,v 1.3 2015/05/28 10:17:31 pascal Exp $

COMMENT =	KDE thumbnail generators for development files
DISTNAME =	kdesdk-thumbnailers-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	devel
#HOMEPAGE =	http://kdesdk-thumbnailers.kde.org/
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kdesdk-thumbnailers

WANTLIB =  m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += gettextpo

MODULES =	devel/gettext

.include <bsd.port.mk>
