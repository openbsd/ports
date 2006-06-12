# $OpenBSD: Makefile,v 1.5 2006/06/12 15:45:51 espie Exp $

COMMENT=		"kde image plugins api"
CATEGORIES=		graphics devel x11 x11/kde
V=			0.1.2
DISTNAME=		libkipi-$V
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		kipi	1.1
EXTRACT_SUFX=		.tar.bz2
HOMEPAGE=		http://extragear.kde.org/apps/kipi/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=kipi/}

SHARED_ONLY=Yes
LIB_DEPENDS+=		lib/qt3/qt-mt.3.33::x11/qt3,mt \
			kdecore.6,kwalletclient,DCOP,kio,kdeui,kdefx,kdesu::x11/kde/libs3

WANTLIB=		ICE Xrender SM Xext pthread X11 util m z \
			jpeg png art_lgpl_2 iconv idn

FLAVORS=	debug
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
SUBST_VARS+=		V

# GPL
PERMIT_DISTFILES_CDROM?=	Yes
PERMIT_DISTFILES_FTP?=		Yes
PERMIT_PACKAGE_CDROM?=		Yes
PERMIT_PACKAGE_FTP?=		Yes

.include <bsd.port.mk>
