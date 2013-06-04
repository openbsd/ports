# $OpenBSD: Makefile,v 1.24 2013/06/04 18:41:45 naddy Exp $

COMMENT=	silly little game based on Spacetaxi for the C64

DISTNAME=	taxipilot-0.7.2
REVISION =	4
CATEGORIES=	games

HOMEPAGE=	http://taxipilot.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =	DCOP GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB +=	Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB +=	expat fam fontconfig freetype idn jpeg kdecore>=4 kdefx
WANTLIB +=	kdesu kdeui kio kwalletclient lcms m mng png pthread
WANTLIB +=	pthread-stubs stdc++ util xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=taxipilot/}

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/qt3 devel/gettext

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
