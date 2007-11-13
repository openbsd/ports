# $OpenBSD: Makefile,v 1.13 2007/11/13 17:10:25 steven Exp $

COMMENT=		kde image plugins
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		kipi-plugins-0.1.3
PKGNAME=		${DISTNAME}p1
HOMEPAGE=		http://extragear.kde.org/apps/kipi/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=kipi/}
EXTRACT_SUFX=		.tar.bz2
SHARED_LIBS +=	kipiplugins          0.0      # .0.1

SHARED_ONLY=Yes
LIB_DEPENDS+=	lib/qt3/qt-mt.>=3.33::x11/qt3 \
		kdecore.>=6,DCOP,kwalletclient,khtml,kjs,kutils,kparts,kdeui,kdesu,kio,kdefx,kdeprint::x11/kde/libs3 \
		kipi::graphics/libkipi \
		exiv2::graphics/exiv2 \
		gphoto2,gphoto2_port::graphics/libgphoto2 \
		Imlib2::graphics/imlib2

RUN_DEPENDS=	::graphics/ImageMagick

MODULES=	x11/kde

WANTLIB=	GL X11 Xau Xdmcp Xext freetype util m c ICE Xrender SM \
		pthread z fam ltdl rpcsvc stdc++ \
		jpeg png pcre pcreposix iconv intl art_lgpl_2 tiff exif \
		idn exslt xslt xml2 gpg-error gcrypt

USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
MODKDE_VERSION=		3.5.3
AUTOCONF=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV} \
			build_libgpod=no
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS} LIB_TIFF='-ltiff -lz'
MAKE_FLAGS+=		LIBRESOLV=

# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>
