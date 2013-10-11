# $OpenBSD: Makefile,v 1.30 2013/10/11 23:48:12 naddy Exp $

COMMENT=	X amateur station tracking and info reporting

DISTNAME=	xastir-1.8.2
REVISION=	17
CATEGORIES=    	comms hamradio geo

HOMEPAGE=	http://www.xastir.org/

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	$(MASTER_SITE_SOURCEFORGE:=xastir/)

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9
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
			--with-map-cache				\
			--with-imagemagick				\
			--with-x					\
			--without-ax25					\
			--without-gpsman				\
			--without-festival				\
			--without-gdal					\
			--with-bdb-libdir=$(LOCALBASE)/lib/db4		\
			--with-bdb-incdir=$(LOCALBASE)/include/db4

WANTLIB += ICE SM c pthread Xt Xpm Xext m X11 proj
WANTLIB += tiff curl shp geotiff MagickCore>=1
WANTLIB += lib/db4/db>=4 pcre Xm

MODULES=	devel/gettext

LIB_DEPENDS=	net/curl \
		devel/shapelib \
		devel/geotiff \
		graphics/ImageMagick \
		databases/db/v4 \
		devel/pcre \
		x11/openmotif

.include <bsd.port.mk>
