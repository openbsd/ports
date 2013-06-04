# $OpenBSD: Makefile,v 1.22 2013/06/04 18:41:43 naddy Exp $

COMMENT=	puzzle game for KDE

DISTNAME=	kslide-0.90
REVISION =	4
CATEGORIES=	games

HOMEPAGE=	http://perso.wanadoo.fr/coquelle/taquin/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =	DCOP GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB +=	Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB +=	expat fam fontconfig freetype idn jpeg kdecore>=4 kdefx
WANTLIB +=	kdesu kdeui kio kwalletclient lcms m mng png pthread
WANTLIB +=	pthread-stubs stdc++ util xcb z

MASTER_SITES=	http://david.bieder.free.fr/eric/taquin/ \
		http://perso.wanadoo.fr/coquelle/taquin/
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/qt3 devel/gettext

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} 

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

WRKDIST=	${WRKDIR}/kslide

.include <bsd.port.mk>
