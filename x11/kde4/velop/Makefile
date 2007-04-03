# $OpenBSD: Makefile,v 1.1.1.1 2007/04/03 22:46:14 espie Exp $

COMMENT=		"K Desktop Environment, development"
DISTNAME=		kdevelop-${VERSION}

SHARED_LIBS +=	kdevcmakecommon      0.0      # .1.0
SHARED_LIBS +=	kdevplatforminterfaces 0.0    # .4.0
SHARED_LIBS +=	kdevplatformproject  0.0      # .4.0
SHARED_LIBS +=	kdevplatformshell    0.0      # .4.0
SHARED_LIBS +=	kdevqmakeparser      0.0      # .1.0
SHARED_LIBS +=	kdevshell            0.0      # .4.0
SHARED_LIBS +=	sublime              0.0      # .4.0

BUILD_DEPENDS+=	::devel/bison
RUN_DEPENDS+=	::devel/bison

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjs,knotifyconfig,kparts,ktexteditor,kutils,kwalletclient,phononcore,threadweaver::x11/kde4/libs \
		db.>=4:db-4.*:databases/db/v4

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst bz2 c fontconfig freetype gif jpeg
WANTLIB += m pcre pcreposix png pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtDesigner QtGui QtSvg QtXml

.include <bsd.port.mk>
