# $OpenBSD: Makefile,v 1.3 2009/08/11 08:42:09 ajacoutot Exp $

COMMENT=	yet another kuake KDE terminal emulator

DISTNAME=	yakuake-2.8.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11 x11/kde

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://yakuake.kde.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_BERLIOS:=yakuake/}

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn \
		jpeg m png pthread rpcsvc stdc++ util z pthread-stubs xcb

MODULES=	devel/gettext \
		x11/kde

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	kdecore.>=7,kdefx,kdesu,kdeui,kio,kwalletclient,DCOP::x11/kde/libs3

USE_X11=	Yes
USE_GMAKE=	Yes

PORTHOME?=	${WRKDIR}
MODKDE_VERSION=	3.5.8
AUTOCONF_VERSION=2.61

CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
