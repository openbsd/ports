# $OpenBSD: Makefile,v 1.27 2011/09/16 11:13:38 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	BitTorrent client for KDE

VERSION=	2.2.8
DISTNAME=	ktorrent-${VERSION}
REVISION=	7
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
WANTLIB=	art_lgpl_2 jpeg GL ICE SM X11 Xau Xcursor Xdmcp Xext \
		Xfixes Xft Xi Xinerama Xmu Xrandr Xrender Xt c dbus-1 \
		expat fontconfig freetype lcms m mng pcre pcreposix \
		png pthread pthread-stubs stdc++ util xcb z idn fam rpcsvc \
		kdecore>=6 DCOP kdefx kdeprint kdesu kparts kdeui khtml \
		kio kjs kutils kwalletclient gmp>=4 avahi-client \
		avahi-common avahi-qt3
RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	x11/kde/libs3 \
		devel/gmp \
		net/avahi,-qt3,no_gui,no_mono,no_qt4

SUBST_VARS+=	VERSION

MODULES=	x11/kde devel/gettext

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include/sigc++-2.0:${LOCALBASE}/lib/sigc++-2.0/include
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
