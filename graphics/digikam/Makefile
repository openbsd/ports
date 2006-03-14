# $OpenBSD: Makefile,v 1.7 2006/03/14 22:27:34 espie Exp $

COMMENT=		"digital image kde application"
CATEGORIES=		graphics x11 x11/kde
V=			0.8.1
DISTNAME=		digikam-$V
PKGNAME=		${DISTNAME}
SHARED_LIBS=		digikam	1.0
HOMEPAGE=		http://www.digikam.org/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=digikam/}
DISTFILES=		${DISTNAME}.tar.bz2

SHARED_ONLY=Yes
LIB_DEPENDS+=	lib/qt3/qt-mt.3.33::x11/qt3,mt \
		kdecore.6,kwalletclient,DCOP,kparts,kdeui,kdesu,kio,kdefx,kdeprint,kutils,kabc,vcard,kresources::x11/kde/libs3 \
		Imlib2.0.0::graphics/imlib2 \
		gphoto2,gphoto2_port::graphics/libgphoto2 \
		kipi::graphics/libkipi \
		kexif::graphics/libkexif \
		sqlite3::databases/sqlite3 \
		tiff::graphics/tiff

WANTLIB=	util m c ICE Xrender SM pthread z stdc++ \
		freetype Xext X11 \
		jpeg png art_lgpl_2 exif intl ltdl iconv

MODULES=	x11/kde

FLAVORS=		debug
BUILD_DEPENDS=		::devel/pkgconfig
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static
MODKDE_VERSION=		3.5
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}
SUBST_VARS+=		V

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS} LIBKEXIF_LIBS='-L${PREFIX}/lib -lkexif -lintl -liconv'
MAKE_FLAGS+=		LIBRESOLV=

# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>
