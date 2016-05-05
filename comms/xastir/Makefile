# $OpenBSD: Makefile,v 1.34 2016/05/05 19:52:28 naddy Exp $

COMMENT=	X amateur station tracking and info reporting

DISTNAME=	xastir-2.0.6
REVISION=	0

CATEGORIES=    	comms hamradio geo

HOMEPAGE=	http://www.xastir.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	$(MASTER_SITE_SOURCEFORGE:=xastir/)

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
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
WANTLIB += db freetype gdal geotiff lcms2 ltdl lzma m pcre proj
WANTLIB += pthread shp tiff z

MODULES=	devel/gettext

LIB_DEPENDS=	net/curl \
		devel/shapelib \
		devel/geotiff \
		geo/gdal \
		graphics/GraphicsMagick \
		databases/db/v4 \
		devel/pcre \
		x11/motif

.include <bsd.port.mk>
