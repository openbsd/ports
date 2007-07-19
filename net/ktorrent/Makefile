# $OpenBSD: Makefile,v 1.1.1.1 2007/07/19 02:59:44 deanna Exp $

SHARED_ONLY=	Yes

COMMENT=	"BitTorrent client for KDE"

VERSION=	2.1.4
DISTNAME=	ktorrent-${VERSION}
CATEGORIES=	net x11 x11/kde
MASTER_SITES=	${HOMEPAGE}downloads/${VERSION}/

HOMEPAGE=	http://ktorrent.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		art_lgpl_2 jpeg ICE SM X11 Xau Xdmcp Xext Xrender c m pcre \
			pcreposix png pthread stdc++ util z idn iconv fam rpcsvc

LIB_DEPENDS=	kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kparts,kdeui,khtml,kio,kjs,kmdi,kutils,kwalletclient::x11/kde/libs3 \
		gmp.>=4.::devel/gmp

MODULES=	x11/kde

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include/sigc++-2.0:${LOCALBASE}/lib/sigc++-2.0/include
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
