# $OpenBSD: Makefile,v 1.20 2010/10/24 21:04:39 ajacoutot Exp $

SHARED_ONLY=	Yes
COMMENT= 	logic circuit simulator for KDE

DISTNAME=	klogic-1.6
REVISION=	4
CATEGORIES=	cad education x11 x11/kde

MASTER_SITES=	http://distfiles.nl/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += art_lgpl_2 jpeg kwalletclient ICE SM X11 Xext
WANTLIB += Xrender c m png pthread stdc++ util z idn
WANTLIB += Xau Xdmcp fam rpcsvc pthread-stubs xcb
WANTLIB += kdecore DCOP kdefx kdesu kdeui kio

LIB_DEPENDS=	::x11/kde/libs3

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
