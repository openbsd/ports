# $OpenBSD: Makefile,v 1.30 2013/10/22 11:34:13 zhuk Exp $

SHARED_ONLY=	Yes
COMMENT= 	logic circuit simulator for KDE

DISTNAME=	klogic-1.6
REVISION=	10
CATEGORIES=	cad education x11 x11/kde

MASTER_SITES=	http://distfiles.nl/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2
WANTLIB += c drm expat fontconfig freetype idn jpeg
WANTLIB += lcms m mng png pthread stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdesu
WANTLIB += ${KDE}/kdeui ${KDE}/kio ${KDE}/kwalletclient

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde devel/gettext
MODKDE_VERSION=	3.1
MODKDE_FIXUP_DATADIR=	Yes

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu autoconf
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
