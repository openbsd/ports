# $OpenBSD: Makefile,v 1.3 2009/08/11 08:42:08 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	twin panel file manager for KDE

DISTNAME=	krusader-1.80.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11 x11/kde

HOMEPAGE=	http://krusader.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=krusader/}

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn \
		jpeg m pcre pcreposix png pthread rpcsvc stdc++ util z \
		pthread-stubs xcb

PORTHOME=	${WRKDIR}

MODULES=	x11/kde devel/gettext

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	kdecore.>=7,DCOP,kdefx,kdesu,kdeui,kio,kparts,kwalletclient,kdeprint,khtml,kjs,kutils::x11/kde/libs3 \
		konq.>=7::x11/kde/base3 \
		kjsembed.>=2::x11/kde/bindings3 \
		qui-mt.>=2::x11/qt3,-main

AUTOCONF_VERSION=2.61

CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV} \
		KDEDIR=${LOCALBASE}/bin \
		QTDIR=${LOCALBASE}/bin
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS} \
		--disable-dependency-tracking \
		--with-extra-libs="${LOCALBASE}/lib" \
		--with-extra-includes="${LOCALBASE}/include/libpng:${LOCALBASE}/include" \
		--without-acl

pre-configure:
	@perl -pi -e 's,-O2,,g;' -e 's,-lpthread,-pthread,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
