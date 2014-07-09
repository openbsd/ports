# $OpenBSD: Makefile,v 1.1.1.1 2014/07/09 19:52:26 zhuk Exp $

COMMENT =	KDE password management
DISTNAME =	kwalletmanager-${MODKDE4_VERSION}

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

MODKDE4_SYSCONF_FILES =	dbus-1		share/examples

.include <bsd.port.mk>
