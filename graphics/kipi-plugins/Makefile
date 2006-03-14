# $OpenBSD: Makefile,v 1.3 2006/03/14 23:26:36 espie Exp $

COMMENT=		"kde image plugins"
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		kipi-plugins-0.1.0-rc1
EXTRACT_SUFX=		.tar.bz2
PKGNAME=		kipi-plugins-0.1.0rc1
HOMEPAGE=		http://extragear.kde.org/apps/kipi/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=kipi/}

SHARED_ONLY=Yes
LIB_DEPENDS+=	lib/qt3/qt-mt.3.33::x11/qt3,mt \
		kdecore.6,DCOP,kwalletclient,khtml,kjs,kutils,kparts,kdeui,kdesu,kio,kdefx,kdeprint::x11/kde/libs3 \
		kipi::graphics/libkipi \
		kexif::graphics/libkexif \
		gphoto2,gphoto2_port::graphics/libgphoto2 \
		Imlib2::graphics/imlib2
MODULES=	x11/kde

BUILD_DEPENDS=	::devel/pkgconfig
WANTLIB=	X11 Xext freetype util m c ICE Xrender SM pthread z GL stdc++ \
		jpeg png pcre pcreposix iconv intl art_lgpl_2 tiff exif ltdl

USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
MODKDE_VERSION=		3.5
AUTOCONF=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS} LIB_TIFF='-ltiff -lz'
MAKE_FLAGS+=		LIBRESOLV=

# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>
