# $OpenBSD: Makefile,v 1.11 2007/03/15 08:07:39 espie Exp $

COMMENT=		"plugins for digikam"
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		digikamimageplugins-0.9.1
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://extragear.kde.org/apps/digikamimageplugins/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=digikam/}

SHARED_ONLY=Yes
LIB_DEPENDS+=	lib/qt3/qt-mt.>=3.33::x11/qt3,mt \
		kdecore.>=6,kwalletclient,DCOP,kio,kdefx,kdeprint,kdesu,kdeui,kparts,kutils,kabc,vcard,kresources,khtml,kjs::x11/kde/libs3 \
		digikam::graphics/digikam

MODULES=	x11/kde

WANTLIB=		Xext X11 util m ICE Xrender SM pthread z \
			jpeg png iconv intl kipi gphoto2 \
			art_lgpl_2 tiff sqlite3 gphoto2_port exif idn \
			exiv2 lcms jasper kexiv2 pcre pcreposix

MODKDE_VERSION=		3.5.3
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS} --disable-libsuffix
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

USE_X11=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS=		--tag=disable-static

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS} LIB_TIFF='-ltiff -lz'
MAKE_FLAGS+=		LIBRESOLV=

# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>
