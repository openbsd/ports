# $OpenBSD: Makefile,v 1.4 2008/02/01 10:31:50 ajacoutot Exp $

COMMENT =		K Desktop Environment, web development
DISTNAME =		kdewebdev-${VERSION}
PKGNAME =		${DISTNAME}p0

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdeui,kfile,khtml,kio,kjs,kparts,kpty,ktexteditor,phonon,solid,threadweaver::x11/kde4/libs \
		tidy.>=1::www/tidy

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst bz2 c fontconfig freetype
WANTLIB += gif jpeg m pcre pcreposix png pthread stdc++ util xml2
WANTLIB += streams xslt z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml
WANTLIB += Xfixes dbus-1 fam glib-2.0 gthread-2.0 iconv intl streamanalyzer

.include <bsd.port.mk>
