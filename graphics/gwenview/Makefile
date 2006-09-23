# $OpenBSD: Makefile,v 1.33 2006/09/23 12:24:48 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"image viewer for KDE"

DISTNAME=	gwenview-1.4.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	gwenviewcore	4.0
CATEGORIES=	graphics x11 x11/kde
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gwenview/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gwenview.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		art_lgpl_2 jpeg ICE SM X11 Xext Xrender c m png \
			pthread stdc++ util z idn iconv intl mng Xcursor

LIB_DEPENDS=	kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kparts,kdeui,kio,kmediaplayer,kutils,kwalletclient::x11/kde/libs3 \
		kipi::graphics/libkipi \
		exif.>=12.1:libexif->=0.5.12:graphics/libexif

MODULES=	x11/kde
MODKDE_VERSION= 3.5

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=	2.59
AUTOCONF?=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+=		--tag=disable-static
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --enable-shared
CONFIGURE_ARGS+= --enable-kipi
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
