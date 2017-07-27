# $OpenBSD: Makefile,v 1.5 2017/07/27 11:57:48 sthen Exp $

COMMENT =	Baloo-based KDE Plasma widgets
DISTNAME =	baloo-widgets-${MODKDE4_VERSION}
REVISION =	1

CATEGORIES =	devel
HOMEPAGE =	https://projects.kde.org/projects/kde/kdelibs/baloo-widgets

SHARED_LIBS =	baloowidgets		1.0

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/baloocore ${KDE4LIB}/baloofiles ${KDE4LIB}/baloopim
WANTLIB += ${KDE4LIB}/balooqueryparser
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfilemetadata ${KDE4LIB}/kio

MODKDE4_USE =	libs

LIB_DEPENDS =	${MODKDE4_DEP_DIR}/baloo>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
