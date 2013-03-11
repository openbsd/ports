# $OpenBSD: Makefile,v 1.53 2013/03/11 11:10:53 espie Exp $

COMMENT=	image viewer for KDE

DISTNAME=	gwenview-1.4.2
REVISION =	10
SHARED_LIBS +=	gwenviewcore         5.0      # .1.0
CATEGORIES=	graphics x11 x11/kde
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gwenview/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gwenview.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xcursor Xext Xfixes Xrender \
		art_lgpl_2 c expat idn jpeg m mng png pthread \
		stdc++ util xcb z kdecore>=6 DCOP kdefx \
		kdeprint kdesu kparts kdeui kio kmediaplayer kutils \
		kwalletclient kipi exiv2
WANTLIB += GL Xdamage Xft Xi Xinerama Xmu Xrandr Xt Xxf86vm drm
WANTLIB += fontconfig freetype lcms
RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	x11/kde/libs3 \
		graphics/libkipi \
		graphics/exiv2

MODULES=	x11/kde devel/gettext
MODKDE_VERSION= 3.5.7

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=	2.61
AUTOCONF?=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --enable-kipi
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
