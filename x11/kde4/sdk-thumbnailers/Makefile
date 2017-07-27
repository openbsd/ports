# $OpenBSD: Makefile,v 1.5 2017/07/27 11:57:50 sthen Exp $

COMMENT =	KDE thumbnail generators for development files
DISTNAME =	kdesdk-thumbnailers-${MODKDE4_VERSION}
REVISION =	2

CATEGORIES =	devel
#HOMEPAGE =	http://kdesdk-thumbnailers.kde.org/
HOMEPAGE =	http://projects.kde.org/projects/kde/kdesdk/kdesdk-thumbnailers

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += gettextpo

MODULES =	devel/gettext
LIB_DEPENDS =	devel/gettext-tools

.include <bsd.port.mk>
