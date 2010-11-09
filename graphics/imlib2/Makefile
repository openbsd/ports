# $OpenBSD: Makefile,v 1.28 2010/11/09 18:22:26 espie Exp $

COMMENT=	image manipulation library

DISTNAME=	imlib2-1.4.2
REVISION =	1
SHARED_LIBS=	Imlib2	6.0	# .5.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.enlightenment.org/p.php?p=about/libs/imlib2&l=en

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

WANTLIB=	X11 Xau Xdmcp Xext c freetype m pthread-stubs xcb z \
		jpeg.>=62 gif.>=5 png.>=2 tiff.>=35 bz2 id3tag.>=3
LIB_DEPENDS+=	::graphics/jpeg \
		::graphics/libungif \
		::graphics/png \
		::graphics/tiff \
		::archivers/bzip2 \
		::audio/libid3tag

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --disable-mmx
.endif
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
