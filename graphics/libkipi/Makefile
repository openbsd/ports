# $OpenBSD: Makefile,v 1.3 2006/01/14 00:07:29 espie Exp $

COMMENT=		"kde image plugins api"
CATEGORIES=		graphics devel x11 x11/kde
DISTNAME=		libkipi-0.1.1
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		kipi	1.0
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://extragear.kde.org/apps/kipi/
MASTER_SITES=		${MASTER_SITE_KDE:=unstable/apps/KDE3.x/graphics/}

SHARED_ONLY=Yes
LIB_DEPENDS+=		lib/qt3/qt-mt.3.33::x11/qt3,mt \
			kdecore.6,kwalletclient,DCOP,kio,kdeui,kdefx,kdesu::x11/kde/libs3

WANTLIB=		ICE Xrender SM Xext pthread X11 util m z \
			jpeg png art_lgpl_2

MODULES=	x11/kde

USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
AUTOCONF=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
CONFIGURE_ARGS+=	${MODKDE_CONFIGURE_ARGS}
USE_GMAKE?=		Yes
CONFIGURE_ENV+=		${MODKDE_CONFIGURE_ENV}
MAKE_ENV=		${CONFIGURE_ENV}

MAKE_FLAGS+=		${MODKDE_MAKE_FLAGS}
MAKE_FLAGS+=		LIBRESOLV=

# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>
