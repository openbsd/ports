# $OpenBSD: Makefile,v 1.14 2019/03/28 19:28:47 rsadowski Exp $

COMMENT =	screen capture program for KDE
DISTNAME =	ksnapshot-${MODKDE4_VERSION}
REVISION =	5

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += ICE SM X11 Xext Xfixes
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Kipi=Yes

.include <bsd.port.mk>
