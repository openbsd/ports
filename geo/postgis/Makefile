# $OpenBSD: Makefile,v 1.26 2015/07/21 08:02:38 landry Exp $

SHARED_ONLY=	Yes

V =	2.1.8
COMMENT=	geographic objects support for PostgreSQL
DISTNAME=	postgis-${V}
CATEGORIES=	geo databases

HOMEPAGE=	http://www.postgis.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.osgeo.org/postgis/source/

WANTLIB=	c geos_c m pq>=5.3 proj xml2 z
WANTLIB +=	curl expat gdal geos geotiff gif idn
WANTLIB +=	jasper jpeg json-c png pthread ssl stdc++ tiff
WANTLIB +=	freexl pcre spatialite sqlite3
WANTLIB +=	crypto openjp2 lzma

MODULES =	devel/gettext databases/postgresql

LIB_DEPENDS=	geo/gdal \
		devel/json-c
RUN_DEPENDS=	databases/postgresql,-server
BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/docbook-xsl \
		textproc/wdg-sgml-lib \
		graphics/ImageMagick

USE_GMAKE=	Yes
#for iconv.h
CONFIGURE_ENV=	LDFLAGS=-L${LOCALBASE}/lib \
		CFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-xsldir=${PREFIX}/share/xsl/docbook/ \
		--libdir=${PREFIX}/lib/postgresql
TEST_ENV +=	LD_PRELOAD=libpthread.so

SUBST_VARS +=	V
DOCDIR =	${PREFIX}/share/doc/postgresql/postgis/

post-install:
	cd ${WRKSRC}/doc && WRKINST=${WRKINST} ${MAKE_PROGRAM} docs-install man-install
	${INSTALL_DATA_DIR} ${DOCDIR}/images/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/style.css ${DOCDIR}/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/images/* ${DOCDIR}/images/

.include <bsd.port.mk>
