# $OpenBSD: Makefile,v 1.6 2009/08/10 06:34:29 kili Exp $

SHARED_ONLY=	Yes

COMMENT=	concentric segmented-rings disk usage visualisation

DISTNAME=	filelight-1.0
PKGNAME=	${DISTNAME}p3
CATEGORIES=	sysutils x11/kde

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.methylblue.com/filelight/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.methylblue.com/filelight/packages/

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam \
		iconv idn intl jpeg m png pthread pthread-stubs rpcsvc \
		stdc++ util xcb z

MODULES=	x11/kde

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	kdecore.>=7,DCOP,kdefx,kdesu,kdeui,kio,kparts,kwalletclient::x11/kde/libs3

PORTHOME=	${WRKDIR}

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
USE_GMAKE=	Yes
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}

pre-configure:
	perl -pi -e 's,-O2,,g' ${WRKSRC}/configure

.include <bsd.port.mk>
