# $OpenBSD: Makefile,v 1.5 2015/04/12 18:17:18 zhuk Exp $

COMMENT =	desktop sharing
DISTNAME =	krfb-${MODKDE4_VERSION}
REVISION =	0

CATEGORIES =	net
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/krfb

SHARED_LIBS =	krfbprivate		52.0

WANTLIB =  c m pthread z
WANTLIB += X11 Xdamage Xext Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd
WANTLIB += jpeg telepathy-qt4

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	graphics/jpeg \
		net/telepathy/telepathy-qt

# Unported yet
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_KTp=True

.include <bsd.port.mk>
