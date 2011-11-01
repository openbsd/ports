# $OpenBSD: Makefile,v 1.23 2011/11/01 19:00:25 jasper Exp $

SHARED_ONLY=	Yes
COMMENT= 	logic circuit simulator for KDE

DISTNAME=	klogic-1.6
REVISION=	6
CATEGORIES=	cad education x11 x11/kde

MASTER_SITES=	http://distfiles.nl/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += DCOP GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft
WANTLIB += Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm art_lgpl_2
WANTLIB += c drm expat fontconfig freetype idn jpeg kdecore kdefx
WANTLIB += kdesu kdeui kio kwalletclient lcms m mng png pthread
WANTLIB += stdc++ util xcb z

LIB_DEPENDS=	x11/kde/libs3

MODULES=	x11/kde devel/gettext

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
