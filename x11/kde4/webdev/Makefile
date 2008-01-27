# $OpenBSD: Makefile,v 1.3 2008/01/27 05:09:15 espie Exp $

COMMENT =		K Desktop Environment, web development
DISTNAME =		kdewebdev-${VERSION}

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdesu,kdeui,khtml,kio,kjs,kparts,ktexteditor,kutils,phonon::x11/kde4/libs

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst bz2 c exslt fontconfig freetype
WANTLIB += gif jpeg m pcre pcreposix png pthread stdc++ util xml2
WANTLIB += xslt z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml

.include <bsd.port.mk>
