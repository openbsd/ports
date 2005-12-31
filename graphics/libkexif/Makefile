# $OpenBSD: Makefile,v 1.4 2005/12/31 14:19:38 steven Exp $

COMMENT=		"kde interface to exif"
CATEGORIES=		graphics devel x11 x11/kde
DISTNAME=		libkexif-0.2.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		kexif	1.0
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://extragear.kde.org/apps/kipi/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=digikam/}

SHARED_ONLY=Yes
LIB_DEPENDS+=lib/qt3/qt-mt.3.33::x11/qt3,mt \
	kdecore.6,DCOP,kdeui,kdefx::x11/kde/libs3 \
	exif::graphics/libexif
BUILD_DEPENDS=	::devel/pkgconfig

WANTLIB=	ICE Xrender SM Xext pthread X11 util m z \
		jpeg png art_lgpl_2
MODULES=	x11/kde

MODKDE_VERSION=		3.4
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
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
