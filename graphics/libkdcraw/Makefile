# $OpenBSD: Makefile,v 1.1.1.1 2007/06/28 15:07:44 espie Exp $

COMMENT=	grab raw data from digital cameras
CATEGORIES=	graphics devel
HOMEPAGE=	http://www.kipi-plugins.org/drupal/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kipi/}
DISTNAME=	libkdcraw-0.1.1
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=	kdcraw               0.0      # .1.0
MODULES=	x11/kde
MODKDE_VERSION=	3.5.7

SHARED_ONLY=	Yes
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.61

CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV+=	${MODKDE_CONFIGURE_ENV} \
		CPPFLAGS=-I${LOCALBASE}/include \
		LDFLAGS=-L${LOCALBASE}/lib
MAKE_FLAGS+=	${MODKDE_MAKE_FLAGS}
USE_GMAKE=	Yes
SEPARATE_BUILD=	simple

LIB_DEPENDS+=	lcms::graphics/lcms \
		DCOP,kdecore,kdefx,kdeui::x11/kde/libs3
RUN_DEPENDS=	::graphics/dcraw
WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender c jpeg m png pthread
WANTLIB += util z art_lgpl_2 iconv idn



# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_FTP=Yes

.include <bsd.port.mk>
