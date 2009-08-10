# $OpenBSD: Makefile,v 1.5 2009/08/10 06:34:30 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	powerful KDE batch file renamer

DISTNAME=	krename-3.0.14
PKGNAME=	${DISTNAME}p2
CATEGORIES=	sysutils x11 x11/kde

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.krename.net/

MAINTAINER=	Vadim Zhukov <persgray@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender c jpeg m png pthread \
		pthread-stubs rpcsvc stdc++ util xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=krename/}

MODULES=	x11/kde devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		::x11/kde/base3
LIB_DEPENDS=	art_lgpl_2.>=5::graphics/libart \
		fam::sysutils/fam \
		idn.>=16.30:libidn->=1.1:devel/libidn \
		DCOP.>=7,kdecore,kdefx,kdesu,kdeui,kio,kparts,kwalletclient::x11/kde/libs3

USE_X11=	Yes
USE_GMAKE=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

AUTOCONF_VERSION=2.60

CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS} \
		--enable-libsuffix=""

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
