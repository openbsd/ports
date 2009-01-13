# $OpenBSD: Makefile,v 1.21 2009/01/13 17:43:28 jasper Exp $

COMMENT=	image manipulation library

DISTNAME=	imlib2-1.4.0
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	Imlib2	5.0	# .5.0
CATEGORIES=	graphics

HOMEPAGE=	http://www.enlightenment.org/p.php?p=about/libs/imlib2&l=en

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext c freetype m z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

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

.include <bsd.port.mk>
