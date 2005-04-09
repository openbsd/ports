# $OpenBSD: Makefile,v 1.1.1.1 2005/04/09 21:51:14 espie Exp $

COMMENT=		"digital image kde application"
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		digikam-0.7.2
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://extragear.kde.org/apps/kipi/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=digikam/}

SHARED_ONLY=Yes
LIB_DEPENDS+=	lib/qt3/qt-mt.3.33::x11/qt3,mt \
		kdecore.6,kwalletclient,DCOP,kparts,kdeui,kdesu,kio,kdefx,kdeprint::x11/kde/libs3 \
		Imlib2.0.0::graphics/imlib2 \
		gphoto2,gphoto2_port::graphics/libgphoto2 \
		kipi::graphics/libkipi \
		kexif::graphics/libkexif \
		gdbm::databases/gdbm \
		tiff::graphics/tiff

WANTLIB=	util m c ICE Xrender SM pthread z stdc++ \
		freetype Xext X11 \
		jpeg png art_lgpl_2 exif intl ltdl iconv

MODULES=	x11/kde

BUILD_DEPENDS=		::devel/pkgconfig
MODKDE_LIBTOOL=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
AUTOCONF=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS} LIBKEXIF_LIBS='-L${PREFIX}/lib -lkexif -lintl -liconv'
MAKE_FLAGS+=		LIBRESOLV=

# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>
