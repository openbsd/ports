# $OpenBSD: Makefile,v 1.4 2006/06/12 08:46:03 espie Exp $

CATEGORIES=	math x11/kde
COMMENT=	'data viewing/plotting tool'

DISTNAME=	kst-1.1.0
PKGNAME=	$(DISTNAME)p1
SHARED_ONLY=	Yes
SHARED_LIBS=	kst		2.0 \
		kstapp		2.0 \
		kstguiapp	2.0 \
		kstmath		2.0	

MASTER_SITES=${MASTER_SITE_KDE:=stable/apps/KDE3.x/scientific/}

PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes

MODULES=		x11/kde
MODKDE_VERSION=		3.4
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS=		${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=		${MODKDE_CONFIGURE_ENV}
CONFIG_GUESS_DIRS=	${MODKDE_CONFIG_GUESS_DIR}
MAKE_FLAGS=		${MODKDE_MAKE_FLAGS}
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
LIBTOOL_FLAGS =		--tag=disable-static

LIB_DEPENDS+=	kdecore.6,kwalletclient,DCOP,kutils,kparts,kdeui,kdesu,kmdi,kio,kdefx,kdeprint::x11/kde/libs3 \
		gsl.7,gslcblas:gsl->=1.6:devel/gsl \
		netcdf,netcdf_c++::math/netcdf

WANTLIB=	c m util stdc++ pthread z X11 ICE Xrender SM Xext \
		png jpeg art_lgpl_2 idn iconv

.include <bsd.port.mk>
