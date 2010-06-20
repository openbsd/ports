# $OpenBSD: Makefile,v 1.6 2010/06/20 21:01:36 espie Exp $

COMMENT =		K Desktop Environment, artwork
DISTNAME =		kdeartwork-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS += 	kdecore.>=8,kdeui,kio,kparts::x11/kde4/libs \
		kscreensaver::x11/kde4/base-workspace
BUILD_DEPENDS+=	::x11/xscreensaver \
		::x11/kde4/automoc

WANTLIB += GL GLU ICE SM X11 Xau Xdmcp Xext Xft
WANTLIB += Xpm c m
WANTLIB += pthread stdc++
WANTLIB += QtDBus QtGui QtSvg QtXml QtOpenGL QtNetwork
WANTLIB += Xt

CONFIGURE_ARGS +=	-DXSCREENSAVER_FOUND:BOOL=TRUE
CONFIGURE_ARGS +=	-DXSCREENSAVER_DIR:STRING=${LOCALBASE}/libexec/xscreensaver
CONFIGURE_ARGS +=	-DXSCREENSAVER_CONFIG_DIR:STRING=${LOCALBASE}/share/xscreensaver/config

.include <bsd.port.mk>
