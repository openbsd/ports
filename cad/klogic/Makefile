# $OpenBSD: Makefile,v 1.25 2013/03/10 23:04:45 espie Exp $

SHARED_ONLY=	Yes
COMMENT= 	logic circuit simulator for KDE

DISTNAME=	klogic-1.6
REVISION=	6
CATEGORIES=	cad education x11 x11/kde

MASTER_SITES=	http://distfiles.nl/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += DCOP GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2
WANTLIB += c drm expat fontconfig freetype idn jpeg kdecore kdefx
WANTLIB += kdesu kdeui kio kwalletclient lcms m mng png pthread
WANTLIB += stdc++ util xcb z

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde devel/gettext
MODKDE_VERSION=	3.1

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu autoconf
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
AUTOCONF_VERSION=	2.57

.include <bsd.port.mk>
