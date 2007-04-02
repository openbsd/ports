# $OpenBSD: Makefile,v 1.2 2007/04/02 22:07:12 espie Exp $

COMMENT=		"K Desktop Environment, network"
DISTNAME=		kdenetwork-${VERSION}
PKGNAME=		${DISTNAME}p1

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,knotifyconfig,kparts,ktexteditor,kutils,kwalletclient,phononcore::x11/kde4/libs \
		kickermain.>=3::x11/kde4/base

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype jpeg m png
WANTLIB += pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml
WANTLIB += gif bz2 pcre pcreposix

.include <bsd.port.mk>
