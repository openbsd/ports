COMMENT=	X amateur station tracking and info reporting

VERSION=	2.1.6
GH_ACCOUNT=	Xastir
GH_PROJECT=	Xastir
GH_TAGNAME=	Release-${VERSION}
DISTNAME=	${GH_PROJECT}-${VERSION}
PKGNAME=	xastir-${VERSION}
REVISION=	0

CATEGORIES=	comms geo

HOMEPAGE=	https://xastir.org/

MAINTAINER=	Michael <michi+openbsd@dataswamp.org>

PERMIT_PACKAGE=	Yes

WANTLIB += GraphicsMagick ICE SM X11 Xext Xm Xpm Xt bz2 c curl
WANTLIB += db freetype geotiff lcms2 ltdl m pcre proj pthread
WANTLIB += shp tiff z

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.11
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'
.if ${MACHINE} == "sparc64"
CFLAGS +=		-fno-tree-ter
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


LIB_DEPENDS=	databases/db/v4 \
		devel/geotiff \
		devel/pcre \
		devel/shapelib \
		graphics/GraphicsMagick \
		graphics/lcms2 \
		graphics/tiff \
		net/curl \
		x11/motif

.include <bsd.port.mk>
