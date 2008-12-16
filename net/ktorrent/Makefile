# $OpenBSD: Makefile,v 1.13 2008/12/16 00:04:19 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	BitTorrent client for KDE

VERSION=	2.2.8
DISTNAME=	ktorrent-${VERSION}
CATEGORIES=	net x11 x11/kde
EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	${HOMEPAGE}downloads/${VERSION}/

HOMEPAGE=	http://ktorrent.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	art_lgpl_2 jpeg ICE SM X11 Xau Xdmcp Xext Xrender c m pcre \
		pcreposix png pthread stdc++ util z idn fam rpcsvc

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kparts,kdeui,khtml,kio,kjs,kutils,kwalletclient::x11/kde/libs3 \
		gmp.>=4.::devel/gmp

SUBST_VARS+=	VERSION

MODULES=	x11/kde devel/gettext

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
