# $OpenBSD: Makefile,v 1.5 2010/04/15 14:34:12 ajacoutot Exp $

COMMENT =		K Desktop Environment, artwork
DISTNAME =		kdeartwork-${VERSION}
PKGNAME =		${DISTNAME}p0

LIB_DEPENDS += 	kdecore.>=8,kdeui,kde3support,kio,kparts,kfile,kpty,solid::x11/kde4/libs \
		kscreensaver::x11/kde4/base-workspace
BUILD_DEPENDS=	::x11/xscreensaver

WANTLIB += GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender Xtst c fontconfig freetype m png
WANTLIB += pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtOpenGL QtNetwork
WANTLIB += bz2 Xt
WANTLIB += Xfixes fam glib-2.0 gthread-2.0 iconv intl streamanalyzer
WANTLIB += streams


.include <bsd.port.mk>
