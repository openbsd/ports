# $OpenBSD: Makefile,v 1.13 2006/12/19 00:00:03 espie Exp $

COMMENT=		"digital image kde application"
CATEGORIES=		graphics x11 x11/kde
V=			0.9.0
DISTNAME=		digikam-$V
SHARED_LIBS +=	digikam              2.0      # .0.0
HOMEPAGE=		http://www.digikam.org/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=digikam/}
DISTFILES=		${DISTNAME}.tar.bz2

SHARED_ONLY=Yes
LIB_DEPENDS+=	lib/qt3/qt-mt.>=3.33::x11/qt3,mt \
		kdecore.>=6,kwalletclient,DCOP,kparts,kdeui,kdesu,kio,kdefx,kdeprint,kutils,kabc,vcard,kresources::x11/kde/libs3 \
		gphoto2,gphoto2_port::graphics/libgphoto2 \
		kipi::graphics/libkipi \
		sqlite3::databases/sqlite3 \
		tiff::graphics/tiff \
		exiv2::graphics/exiv2 \
		lcms::graphics/lcms

WANTLIB=	util m c ICE Xrender SM pthread z stdc++ \
		Xext X11 jpeg png art_lgpl_2 exif intl iconv idn

MODULES=	x11/kde

USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static
MODKDE_VERSION=		3.5.3
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
CONFIGURE_ENV+=		CPPFLAGS=-I${LOCALBASE}/include LDFLAGS=-L${LOCALBASE}/lib
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
