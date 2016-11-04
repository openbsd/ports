# $OpenBSD: Makefile,v 1.34 2016/11/04 11:35:19 sthen Exp $

V =	2.3.0
COMMENT=	geographic objects support for PostgreSQL
DISTNAME=	postgis-${V}
CATEGORIES=	geo databases
REVISION=	0

SHARED_LIBS +=	lwgeom 0.0 lwgeom-2.3 0.0 # 4.0

HOMEPAGE=	http://www.postgis.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl expat freexl gdal geos geos_c geotiff gif
WANTLIB += jasper jpeg json-c lzma m nghttp2 openjp2 pcre png pq>=5.3
WANTLIB += proj pthread qhull spatialite sqlite3 ssl stdc++ tiff xml2 z

MASTER_SITES=	http://download.osgeo.org/postgis/source/

MODULES =	devel/gettext databases/postgresql

LIB_DEPENDS=	databases/sqlite3 \
		geo/gdal \
		devel/json-c
RUN_DEPENDS=	databases/postgresql,-server
BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/docbook-xsl \
		textproc/wdg-sgml-lib \
		graphics/ImageMagick

USE_GMAKE=	Yes
USE_LIBTOOL =	Yes
#for iconv.h
CONFIGURE_ENV=	LDFLAGS=-L${LOCALBASE}/lib \
		CFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-xsldir=${PREFIX}/share/xsl/docbook/ \
		--libdir=${PREFIX}/lib/postgresql

SUBST_VARS +=	V
DOCDIR =	${PREFIX}/share/doc/postgresql/postgis/

post-install:
	cd ${WRKSRC}/doc && WRKINST=${WRKINST} ${MAKE_PROGRAM} docs-install man-install
	${INSTALL_DATA_DIR} ${DOCDIR}/images/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/style.css ${DOCDIR}/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/images/* ${DOCDIR}/images/

.include <bsd.port.mk>
