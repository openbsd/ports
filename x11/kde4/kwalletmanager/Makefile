# $OpenBSD: Makefile,v 1.5 2015/08/27 07:30:26 zhuk Exp $

COMMENT =	KDE password management
DISTNAME =	kwalletmanager-${MODKDE4_VERSION}
REVISION =	3

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

MODKDE4_SYSCONF_FILES =	dbus-1		share/examples/kde

.include <bsd.port.mk>
