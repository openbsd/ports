# $OpenBSD: Makefile,v 1.10 2013/02/03 13:21:42 zhuk Exp $

COMMENT =		K Desktop Environment, artwork
DISTNAME =		kdeartwork-${VERSION}

LIB_DEPENDS += 	x11/kde4/libs \
		x11/kde4/base-workspace
BUILD_DEPENDS+=	x11/xscreensaver \
		devel/automoc \
		math/eigen2

WANTLIB += GL GLU ICE SM X11 Xau Xdmcp Xext Xft Xpm Xt c kdecore>=8 kdeui \
	kio kparts kscreensaver lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork \
	lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml m pthread stdc++

CONFIGURE_ARGS +=	-DXSCREENSAVER_FOUND:BOOL=TRUE
CONFIGURE_ARGS +=	-DXSCREENSAVER_DIR:STRING=${LOCALBASE}/libexec/xscreensaver
CONFIGURE_ARGS +=	-DXSCREENSAVER_CONFIG_DIR:STRING=${LOCALBASE}/share/xscreensaver/config

.include <bsd.port.mk>
