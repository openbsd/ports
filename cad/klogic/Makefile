# $OpenBSD: Makefile,v 1.17 2009/09/10 22:17:52 jasper Exp $

SHARED_ONLY=	Yes
COMMENT= 	logic circuit simulator for KDE

DISTNAME=	klogic-1.6
PKGNAME=	${DISTNAME}p4
CATEGORIES=	cad education x11 x11/kde

MASTER_SITES=	http://www.phil.uu.nl/~lievisse/distfiles/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	art_lgpl_2 jpeg kwalletclient ICE SM X11 Xext \
		Xrender c m png pthread stdc++ util z idn \
		Xau Xdmcp fam rpcsvc pthread-stubs xcb

LIB_DEPENDS=	kdecore.>=4,DCOP,kdefx,kdesu,kdeui,kio::x11/kde/libs3

MODULES=	x11/kde devel/gettext

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
