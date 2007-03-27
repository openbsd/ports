# $OpenBSD: Makefile,v 1.2 2007/03/27 18:06:03 espie Exp $

COMMENT=		"K Desktop Environment, games"
DISTNAME=		kdegames-${VERSION}
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=	atlantic             5.0      # .4.0
SHARED_LIBS +=	atlantikclient       5.0      # .4.0
SHARED_LIBS +=	atlantikui           5.0      # .4.0
SHARED_LIBS +=	kdegames             5.0      # .4.0
SHARED_LIBS +=	kmahjongglib         0.0      # .1.0
SHARED_LIBS +=	kolflib              0.0      # .1.2
SHARED_LIBS +=	ksirtetlib           0.0      # .1.2

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdefx,kdeprint,kdesu,kdeui,kdnssd,kio,knotifyconfig,kparts,kutils,kwalletclient,phononcore::x11/kde4/libs

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtOpenGL QtSvg QtXml
WANTLIB += bz2

.include <bsd.port.mk>
