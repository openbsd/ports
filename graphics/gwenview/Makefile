# $OpenBSD: Makefile,v 1.43 2009/08/10 06:31:44 kili Exp $

COMMENT=	image viewer for KDE

DISTNAME=	gwenview-1.4.2
PKGNAME=	${DISTNAME}p5
SHARED_LIBS +=	gwenviewcore         5.0      # .1.0
CATEGORIES=	graphics x11 x11/kde
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gwenview/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gwenview.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xrender \
		art_lgpl_2 c fam idn jpeg m mng png pthread pthread-stubs \
		rpcsvc stdc++ util xcb z

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	kdecore.>=6,DCOP,kdefx,kdeprint,kdesu,kparts,kdeui,kio,kmediaplayer,kutils,kwalletclient::x11/kde/libs3 \
		kipi::graphics/libkipi \
		exiv2::graphics/exiv2

MODULES=	x11/kde devel/gettext
MODKDE_VERSION= 3.5.7

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=	2.61
AUTOCONF?=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --enable-kipi
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

.include <bsd.port.mk>
