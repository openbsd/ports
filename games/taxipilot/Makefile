# $OpenBSD: Makefile,v 1.28 2013/10/05 07:34:32 espie Exp $

COMMENT=	silly little game based on Spacetaxi for the C64

DISTNAME=	taxipilot-0.7.2
REVISION =	8
CATEGORIES=	games

HOMEPAGE=	http://taxipilot.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =  GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB += expat fam fontconfig freetype idn jpeg lcms m mng png
WANTLIB += pthread pthread-stubs stdc++ util xcb z
WANTLIB += lib/kde3/DCOP lib/kde3/kdecore>=4 lib/kde3/kdefx
WANTLIB += lib/kde3/kdesu lib/kde3/kdeui lib/kde3/kio
WANTLIB += lib/kde3/kwalletclient

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=taxipilot/}

RUN_DEPENDS=	x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/qt3 devel/gettext
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
