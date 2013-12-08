# $OpenBSD: Makefile,v 1.1.1.1 2013/12/08 18:11:23 zhuk Exp $

COMMENT =	desktop sharing
DISTNAME =	krfb-${MODKDE4_VERSION}

CATEGORIES =	network
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/krfb

SHARED_LIBS =	krfbprivate		51.0

WANTLIB =  c m pthread stdc++ z
WANTLIB += X11 Xdamage Xext Xtst
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd
WANTLIB += jpeg telepathy-qt4

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	graphics/jpeg \
		net/telepathy/telepathy-qt

.include <bsd.port.mk>
