# $OpenBSD: Makefile,v 1.12 2009/08/11 08:42:09 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	QNX Photon inspired theme for KDE

DISTNAME=	qinx-1.4
PKGNAME=	${DISTNAME}p0

CATEGORIES=	x11 x11/kde
MASTER_SITES=	http://www.usermode.org/code/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.usermode.org/code.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender idn jpeg m png \
		util z pthread-stubs xcb

LIB_DEPENDS=	art_lgpl_2::graphics/libart \
		kdecore.>=6,DCOP,kdefx,kdeui::x11/kde/libs3 \
		kdecorations::x11/kde/base3

MODULES=	devel/gettext x11/kde
MODKDE_VERSION= 3.4

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
