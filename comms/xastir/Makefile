# $OpenBSD: Makefile,v 1.32 2014/04/24 18:52:58 schwarze Exp $

COMMENT=	X amateur station tracking and info reporting

DISTNAME=	xastir-2.0.4
REVISION=	0
CATEGORIES=    	comms hamradio geo

HOMEPAGE=	http://www.xastir.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	$(MASTER_SITE_SOURCEFORGE:=xastir/)

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'
.if ${MACHINE} == "sparc64"
MAKE_FLAGS=	CFLAGS="${CFLAGS} -fno-tree-ter"
.endif

CONFIGURE_ARGS=		--with-shapelib					\
			--with-pcre					\
			--with-libproj					\
			--with-geotiff					\
			--with-dbfawk					\
			--with-rtree					\
			--with-x					\
			--without-ax25					\
			--without-gpsman				\
			--without-festival				\
			--with-bdb-libdir=$(LOCALBASE)/lib/db4		\
			--with-bdb-incdir=$(LOCALBASE)/include/db4

WANTLIB += GraphicsMagick ICE SM X11 Xext Xm Xpm Xt bz2 c curl
WANTLIB += db gdal geotiff lcms2 ltdl lzma m pcre proj pthread
WANTLIB += shp tiff z

MODULES=	devel/gettext

LIB_DEPENDS=	net/curl \
		devel/shapelib \
		devel/geotiff \
		geo/gdal \
		graphics/GraphicsMagick \
		databases/db/v4 \
		devel/pcre \
		x11/openmotif

.include <bsd.port.mk>
