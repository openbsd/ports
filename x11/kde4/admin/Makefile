# $OpenBSD: Makefile,v 1.2 2007/04/02 00:39:25 espie Exp $

COMMENT=		"K Desktop Environment, admin tools"
DISTNAME=		kdeadmin-${VERSION}
PKGNAME=		${DISTNAME}p0

LIB_DEPENDS+= 	kdecore.>=8,kde3support,kdefx,kdeprint,kdesu,kdeui,kio,kntlm,kparts,kutils,kwalletclient::x11/kde4/libs \
		kldap::x11/kde4/pimlibs
		
	

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml
WANTLIB += bz2

.include <bsd.port.mk>
