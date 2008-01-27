# $OpenBSD: Makefile,v 1.4 2008/01/27 05:09:15 espie Exp $

COMMENT =		K Desktop Environment, toys
DISTNAME =		kdetoys-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS+= 	kdecore.>=8,kde3support,kdeui,khtml,kio,kjs,knotifyconfig,kparts,ktexteditor,kfile,kpty,phonon,solid::x11/kde4/libs \
		kscreensaver.>=8::x11/kde4/base-workspace

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype jpeg m png
WANTLIB += pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork
WANTLIB += bz2 gif pcre pcreposix
WANTLIB += Xfixes dbus-1 fam glib-2.0 gthread-2.0 iconv intl streamanalyzer
WANTLIB += streams


.include <bsd.port.mk>
