# $OpenBSD: Makefile,v 1.14 2006/11/20 09:21:09 bernd Exp $

COMMENT=	"image manipulation library"

DISTNAME=	imlib2-1.3.0
SHARED_LIBS=	Imlib2	4.0	# .4.0
CATEGORIES=	graphics

HOMEPAGE=	http://enlightenment.org/Libraries/Imlib2/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c freetype m z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS+=	jpeg.>=62::graphics/jpeg \
		gif.>=5::graphics/libungif \
		png.>=2::graphics/png \
		tiff.>=35::graphics/tiff \
		bz2::archivers/bzip2 \
		id3tag.>=3::audio/libid3tag

USE_X11=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${WRKBUILD}/src/lib/.libs -L${X11BASE}/lib -L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS+= --enable-amd64
.else
CONFIGURE_ARGS+= --disable-amd64
.endif

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --enable-mmx
.else
CONFIGURE_ARGS+= --disable-mmx
.endif

.include <bsd.port.mk>
