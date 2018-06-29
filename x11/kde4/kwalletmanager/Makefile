# $OpenBSD: Makefile,v 1.8 2018/06/29 22:16:31 espie Exp $

COMMENT =	KDE password management
DISTNAME =	kwalletmanager-${MODKDE4_VERSION}
REVISION =	6

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

MODKDE4_SYSCONF_FILES =	dbus-1		share/examples/kde

.include <bsd.port.mk>
