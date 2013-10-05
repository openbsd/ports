# $OpenBSD: Makefile,v 1.22 2013/10/05 07:34:43 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	QNX Photon inspired theme for KDE

DISTNAME=	qinx-1.4
REVISION=	5

CATEGORIES=	x11 x11/kde
MASTER_SITES=	http://www.usermode.org/code/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.usermode.org/code.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 expat
WANTLIB += fontconfig freetype idn m png pthread pthread-stubs stdc++
WANTLIB += util xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecorations ${KDE}/kdecore ${KDE}/kdefx
WANTLIB += ${KDE}/kdeui

LIB_DEPENDS=	graphics/libart \
		x11/kde/libs3 \
		x11/kde/base3

MODULES=	devel/gettext x11/kde
MODKDE_VERSION= 3.4

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
