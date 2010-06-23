# $OpenBSD: Makefile,v 1.5 2010/06/23 15:04:46 espie Exp $

COMMENT =		K Desktop Environment, toys
DISTNAME =		kdetoys-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS+= 	kdecore.>=8,kde3support,kdeui,khtml,kio,kjs,knotifyconfig,kparts::x11/kde4/libs \
		kscreensaver.>=8::x11/kde4/base-workspace

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xft Xpm
WANTLIB += c m
WANTLIB += pthread stdc++
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork


.include <bsd.port.mk>
