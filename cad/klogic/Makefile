# $OpenBSD: Makefile,v 1.33 2015/09/12 14:15:32 ajacoutot Exp $

SHARED_ONLY=	Yes
COMMENT= 	logic circuit simulator for KDE

DISTNAME=	klogic-1.6
REVISION=	12
CATEGORIES=	cad education x11 x11/kde

MASTER_SITES=	http://distfiles.nl/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient
WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama Xmu
WANTLIB += Xrandr Xrender Xt Xxf86vm art_lgpl_2 c drm expat fontconfig
WANTLIB += freetype idn jpeg lcms m mng png pthread stdc++ util xcb
WANTLIB += xcb-glx z X11-xcb Xau Xdmcp fam glapi pthread-stubs xcb-dri2

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde devel/gettext
MODKDE_VERSION=	3.1
MODKDE_FIXUP_DATADIR=	Yes

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
AUTOCONF_VERSION=	2.57

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	mv ${PREFIX}/share/icons/klogic/*.xpm ${PREFIX}/share/pixmaps/
	rmdir ${PREFIX}/share/icons/klogic
	rmdir ${PREFIX}/share/icons

.include <bsd.port.mk>
