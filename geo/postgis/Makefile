# $OpenBSD: Makefile,v 1.20 2013/08/31 09:04:30 landry Exp $

SHARED_ONLY=	Yes

V =	2.1.0
COMMENT=	geographic objects support for PostgreSQL
DISTNAME=	postgis-${V}
CATEGORIES=	geo databases

HOMEPAGE=	http://www.postgis.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.osgeo.org/postgis/source/

WANTLIB=	c geos_c m pq>=5.3 proj xml2 z
WANTLIB +=	com_err crypto curl expat gdal geos geotiff gif idn
WANTLIB +=	jasper jpeg json-c png pthread ssl stdc++ tiff
WANTLIB +=	asn1 freexl heimbase krb5 pcre roken spatialite sqlite3 wind

MODULES =	devel/gettext

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

SUBST_VARS +=	V
DOCDIR =	${PREFIX}/share/doc/postgresql/postgis/

post-install:
	cd ${WRKSRC}/doc && WRKINST=${WRKINST} ${MAKE_PROGRAM} docs-install man-install
	${INSTALL_DATA_DIR} ${DOCDIR}/images/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/style.css ${DOCDIR}/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/images/* ${DOCDIR}/images/

# the garden regress suite needs postgis installed
do-test:
	regdir=$$(mktemp -t -d postgis-regress.XXXXXX) && \
	LC_CTYPE=C initdb -D $${regdir} && \
	LD_PRELOAD=libpthread.so pg_ctl -D $${regdir} -o '-p 12341' -l $${regdir}/log start && \
	cd ${WRKSRC}/regress && PGPORT=12341 ${MAKE_PROGRAM} check && \
	pg_ctl -D $${regdir} -o '-p 12341'  stop -m fast

.include <bsd.port.mk>
