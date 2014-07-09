# $OpenBSD: Makefile,v 1.2 2014/07/09 20:03:27 zhuk Exp $

COMMENT =	KDE remote desktop client
DISTNAME =	krdc-${MODKDE4_VERSION}

CATEGORIES =	network
HOMEPAGE =	http://projects.kde.org/projects/kde/kdenetwork/krdc

SHARED_LIBS =	krdccore		51.0 # 4.11

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kdnssd
WANTLIB += ${KDE4LIB}/kfile ${KDE4LIB}/kio ${KDE4LIB}/knotifyconfig
WANTLIB += telepathy-qt4

BUILD_DEPENDS =	x11/freerdp

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/freerdp \
		x11/gtk+2,-guic

LIB_DEPENDS =	net/telepathy/telepathy-qt

# Not ported yet
CONFIGURE_ARGS =	-DWITH_LibVNCServer:Bool=No

.include <bsd.port.mk>
