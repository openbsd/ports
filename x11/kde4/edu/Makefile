# $OpenBSD: Makefile,v 1.3 2007/04/02 13:18:57 espie Exp $

COMMENT=		"K Desktop Environment, edu"
DISTNAME=		kdeedu-${VERSION}
PKGNAME=		${DISTNAME}p1

SHARED_LIBS +=	compoundviewer       0.0      # .4.0
SHARED_LIBS +=	extdate              5.0      # .4.0
SHARED_LIBS +=	kdeeducore           5.0      # .4.0
SHARED_LIBS +=	kdeeduplot           5.0      # .4.0
SHARED_LIBS +=	kdeeduui             5.0      # .4.0
SHARED_LIBS +=	science              0.0      # .4.0
SHARED_LIBS +=	SatLib               0.0      # .1.0
SHARED_LIBS +=	kiten                3.0      # .4.0
SHARED_LIBS +=	kvoctraincore        2.0      # .1.0
SHARED_LIBS +=	sbigudrv             0.0      # .1.0

BUILD_DEPENDS+=	::math/eigen
LIB_DEPENDS+=	kdecore.>=8,kde3support,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,knewstuff,knotifyconfig,kparts,ktexteditor,kutils,kwalletclient,phononcore::x11/kde4/libs \
		openbabel::misc/openbabel \
		cfitsio::math/cfitsio

WANTLIB += GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender Xtst c fontconfig freetype jpeg
WANTLIB += m png pthread stdc++ util z
WANTLIB += Qt3Support QtDesigner QtGui QtOpenGL QtSvg QtXml QtDBus
WANTLIB += bz2 gif pcre pcreposix

.include <bsd.port.mk>
