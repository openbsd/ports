# $OpenBSD: Makefile,v 1.2 2007/04/02 21:32:22 espie Exp $

COMMENT=		"K Desktop Environment, utils"
DISTNAME=		kdeutils-${VERSION}
PKGNAME=		${DISTNAME}p0

SHARED_LIBS+=	khexeditcore         0.0      # .1.0
SHARED_LIBS+=	khexeditgui          0.0      # .1.0
SHARED_LIBS+=	kregexpeditorcommon  3.0      # .1.0

LIB_DEPENDS+= 	kdecore.>=8,kde3support,kdefx,kdeprint,kdesu,kdeui,kio,knewstuff,kparts,krosscore,kutils,kwalletclient::x11/kde4/libs \
		kabc.>=5::x11/kde4/pimlibs \
		gmp::devel/gmp \
		python2.4:python-2.4*:lang/python/2.4

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml
WANTLIB += bz2

.include <bsd.port.mk>
