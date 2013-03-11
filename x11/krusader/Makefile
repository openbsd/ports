# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:13 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	twin panel file manager for KDE

DISTNAME=	krusader-1.80.0
REVISION=	7

CATEGORIES=	x11 x11/kde

HOMEPAGE=	http://krusader.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=krusader/}

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xrender art_lgpl_2 c fam idn \
		jpeg m pcre pcreposix png pthread rpcsvc stdc++ util z \
		pthread-stubs xcb kdecore DCOP kdefx kdesu kdeui kio \
		kparts kwalletclient kdeprint khtml kjs kutils konq \
		kjsembed qui-mt

PORTHOME=	${WRKDIR}

MODULES=	x11/kde devel/gettext

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS=	x11/kde/libs3 \
		x11/kde/base3 \
		x11/kde/bindings3 \
		x11/qt3,-main

AUTOCONF_VERSION=2.61

CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS} \
		--disable-dependency-tracking \
		--with-extra-libs="${LOCALBASE}/lib" \
		--with-extra-includes="${LOCALBASE}/include/libpng:${LOCALBASE}/include" \
		--without-acl

pre-configure:
	@perl -pi -e 's,-O2,,g;' -e 's,-lpthread,-pthread,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
