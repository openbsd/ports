# $OpenBSD: Makefile,v 1.5 2010/04/15 14:34:12 ajacoutot Exp $

COMMENT =		K Desktop Environment, accessibility
DISTNAME =		kdeaccessibility-${VERSION}
PKGNAME =		${DISTNAME}p0

SHARED_LIBS +=  kttsd             3.0 # .4.0

LIB_DEPENDS += 	kdecore.>=8,kde3support,kdeui,kio,kparts,kutils,kfile,kpty,phonon,solid::x11/kde4/libs

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork
WANTLIB += bz2
WANTLIB += Xfixes fam glib-2.0 gthread-2.0 iconv intl streamanalyzer
WANTLIB += streams


CONFIGURE_ARGS += -DKDE4_KTTSD_ALSA:BOOL=OFF

.include <bsd.port.mk>
