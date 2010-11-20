# $OpenBSD: Makefile,v 1.10 2010/11/20 17:22:41 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	powerful KDE batch file renamer

DISTNAME=	krename-3.0.14
REVISION =	4
CATEGORIES=	sysutils x11 x11/kde

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.krename.net/

MAINTAINER=	Vadim Zhukov <persgray@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xdmcp Xext Xrender c fam jpeg m png
WANTLIB += pthread pthread-stubs stdc++ util xcb z
WANTLIB += art_lgpl_2>=5 idn>=16.30 DCOP>=7 kdecore kdefx kdesu
WANTLIB += kdeui kio kparts kwalletclient

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=krename/}

MODULES=	x11/kde devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/kde/base3
LIB_DEPENDS=	graphics/libart \
		devel/libidn>=1.1 \
		x11/kde/libs3

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
