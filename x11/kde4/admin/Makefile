# $OpenBSD: Makefile,v 1.4 2008/01/27 14:17:58 espie Exp $

COMMENT =		K Desktop Environment, admin tools
DISTNAME =		kdeadmin-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS += 	kdecore.>=8,kde3support,kdeui,kio,kntlm,kparts,kfile,kpty,solid::x11/kde4/libs \
		kldap::x11/kde4/pimlibs
		
	

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork
WANTLIB += bz2
WANTLIB += Xfixes fam glib-2.0 gthread-2.0 iconv intl lber ldap
WANTLIB += sasl2 streamanalyzer streams


.include <bsd.port.mk>
