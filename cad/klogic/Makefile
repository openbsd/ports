# $OpenBSD: Makefile,v 1.10 2006/08/01 12:13:29 espie Exp $

SHARED_ONLY=	Yes
COMMENT= 	"logic circuit simulator for KDE"

DISTNAME=	klogic-1.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	cad education x11 x11/kde
MASTER_SITES=	${HOMEPAGE}Version/

HOMEPAGE=	http://www.a-rostin.de/klogic/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		art_lgpl_2.0.0 jpeg kwalletclient ICE SM X11 Xext \
			Xrender c m png pthread stdc++ util z iconv idn

LIB_DEPENDS=	kdecore.>=4,DCOP,kdefx,kdesu,kdeui,kio::x11/kde/libs3

MODULES=	x11/kde

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
