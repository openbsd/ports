# $OpenBSD: Makefile,v 1.26 2013/10/22 11:34:15 zhuk Exp $

COMMENT=	puzzle game for KDE

DISTNAME=	kslide-0.90
REVISION =	8
CATEGORIES=	games

HOMEPAGE=	http://perso.wanadoo.fr/coquelle/taquin/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes

WANTLIB =	GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB +=	Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm
WANTLIB +=	expat fam fontconfig freetype idn jpeg lcms m mng png pthread
WANTLIB +=	pthread-stubs stdc++ util xcb z
WANTLIB +=	${KDE}/DCOP ${KDE}/kdecore>=4 ${KDE}/kdefx
WANTLIB +=	${KDE}/kdesu ${KDE}/kdeui ${KDE}/kio
WANTLIB +=	${KDE}/kwalletclient

MASTER_SITES=	http://david.bieder.free.fr/eric/taquin/ \
		http://perso.wanadoo.fr/coquelle/taquin/
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3
DPB_PROPERTIES =	tag:kde3

MODULES=	x11/kde devel/gettext

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
MODKDE_FIXUP_DATADIR=		Yes

WRKDIST=	${WRKDIR}/kslide

.include <bsd.port.mk>
