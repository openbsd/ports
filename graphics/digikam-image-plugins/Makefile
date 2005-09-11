# $OpenBSD: Makefile,v 1.3 2005/09/11 10:03:27 espie Exp $

COMMENT=		"plugins for digikam"
CATEGORIES=		graphics x11 x11/kde
DISTNAME=		digikamimageplugins-0.7.4
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://extragear.kde.org/apps/kipi/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=digikam/}

SHARED_ONLY=Yes
LIB_DEPENDS+=	lib/qt3/qt-mt.3.33::x11/qt3,mt \
		kdecore.6,kwalletclient,DCOP,kio,kdefx,kdeprint,kdesu,kdeui,kparts::x11/kde/libs3 \
		digikam::graphics/digikam

MODULES=	x11/kde

WANTLIB=		freetype Xext X11 util m ICE Xrender SM pthread z \
			jpeg png iconv intl kipi gphoto2 kexif Imlib2 \
			art_lgpl_2 tiff gdbm ltdl gphoto2_port exif

MODKDE_LIBTOOL=		Yes
MODKDE_VERSION=		3.4
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

BUILD_DEPENDS=		::archivers/gtar
MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS} LIB_TIFF='-ltiff -lz'
MAKE_FLAGS+=		LIBRESOLV=
TAR=			gtar

# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>
