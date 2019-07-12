# $OpenBSD: Makefile,v 1.42 2019/07/12 21:02:21 sthen Exp $

COMMENT=	silly little game based on Spacetaxi for the C64

DISTNAME=	taxipilot-0.7.2
REVISION =	17
CATEGORIES=	games

HOMEPAGE=	http://taxipilot.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c
WANTLIB += drm expat fam fontconfig freetype glapi iconv idn intl jpeg lcms
WANTLIB += lib/kde3/DCOP lib/kde3/kdecore>=4 lib/kde3/kdefx
WANTLIB += lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kio
WANTLIB += lib/kde3/kwalletclient m mng png pthread ${COMPILER_LIBCXX}
WANTLIB += util xcb xcb-dri2 xcb-glx z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=taxipilot/}

RUN_DEPENDS=	x11/gtk+3,-guic
LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/qt3
DPB_PROPERTIES =	tag:kde3

PORTHOME=	${WRKDIR}

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure Qt3 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

NO_TEST=	Yes

.include <bsd.port.mk>
