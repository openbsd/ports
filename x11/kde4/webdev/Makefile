# $OpenBSD: Makefile,v 1.1.1.1 2007/04/03 23:07:24 espie Exp $

COMMENT=		"K Desktop Environment, web development"
DISTNAME=		kdewebdev-${VERSION}

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,kparts,ktexteditor,kutils,kwalletclient,phononcore::x11/kde4/libs

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst bz2 c exslt fontconfig freetype
WANTLIB += gif jpeg m pcre pcreposix png pthread stdc++ util xml2
WANTLIB += xslt z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml

.include <bsd.port.mk>
