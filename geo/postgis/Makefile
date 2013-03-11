# $OpenBSD: Makefile,v 1.16 2013/03/11 11:07:43 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	geographic objects support for PostgreSQL
DISTNAME=	postgis-2.0.1
CATEGORIES=	geo databases

HOMEPAGE=	http://www.postgis.org/

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}download/

WANTLIB=	c geos_c m pq>=5.3 proj xml2 z
WANTLIB +=	com_err crypto curl expat gdal geos geotiff gif idn
WANTLIB +=	jasper jpeg json png pthread ssl stdc++ tiff

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
USE_LIBTOOL = Yes

DOCDIR =	${PREFIX}/share/doc/postgresql/postgis/

post-install:
	cd ${WRKSRC}/doc && WRKINST=${WRKINST} ${MAKE_PROGRAM} docs-install man-install
	${INSTALL_DATA_DIR} ${DOCDIR}/images/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/style.css ${DOCDIR}/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/images/* ${DOCDIR}/images/

# the garden regress suite needs postgis installed
# no the regular test suite
# some tests are known to fail, hence the || to stop the db
do-test:
	regdir=$$(mktemp -t -d postgis-regress.XXXX) && \
	LC_CTYPE=C initdb -D $${regdir} && \
	LD_PRELOAD=libpthread.so pg_ctl -D $${regdir} -o '-p 12341' -l $${regdir}/log start && \
	cd ${WRKSRC}/regress && PGPORT=12341 ${MAKE_PROGRAM} check || \
	pg_ctl -D $${regdir} -o '-p 12341'  stop -m fast

.include <bsd.port.mk>
