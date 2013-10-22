# $OpenBSD: Makefile,v 1.33 2013/10/22 11:34:22 zhuk Exp $

SHARED_ONLY=	Yes

COMMENT=	BitTorrent client for KDE

VERSION=	2.2.8
DISTNAME=	ktorrent-${VERSION}
REVISION=	10
CATEGORIES=	net x11 x11/kde
EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	${HOMEPAGE}downloads/${VERSION}/

HOMEPAGE=	http://ktorrent.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  GL ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt art_lgpl_2 avahi-client avahi-common
WANTLIB += avahi-qt3 c dbus-1 expat fam fontconfig freetype gmp>=4 idn
WANTLIB += jpeg lcms m mng pcre pcreposix png pthread pthread-stubs
WANTLIB += rpcsvc stdc++ util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore>=6 ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/khtml ${KDE}/kio
WANTLIB += ${KDE}/kjs ${KDE}/kparts ${KDE}/kutils ${KDE}/kwalletclient

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic

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
LIBTOOL_FLAGS=	--tag=disable-static
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --with-extra-includes=${LOCALBASE}/include/sigc++-2.0:${LOCALBASE}/lib/sigc++-2.0/include:${LOCALBASE}/include
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
