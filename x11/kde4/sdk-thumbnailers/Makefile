# $OpenBSD: Makefile,v 1.2 2014/07/09 20:03:31 zhuk Exp $

COMMENT =	KDE thumbnail generators for development files
DISTNAME =	kdesdk-thumbnailers-${MODKDE4_VERSION}

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
