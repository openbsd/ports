# $OpenBSD: Makefile,v 1.9 2005/12/26 14:35:52 steven Exp $

COMMENT=	"image manipulation library"

DISTNAME=	imlib2-1.1.2
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=		Imlib2	2.2
MODGNU_SHARED_LIBS=	Imlib2	''
CATEGORIES=	graphics

HOMEPAGE=	http://www.enlightenment.org/pages/imlib2.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c freetype m z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS+=	jpeg.62::graphics/jpeg \
		ungif.5::graphics/libungif \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		bz2::archivers/bzip2 \
		ltdl::devel/libtool,-ltdl

USE_X11=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --enable-mmx
.endif

.include <bsd.port.mk>
