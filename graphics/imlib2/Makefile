# $OpenBSD: Makefile,v 1.3 2004/09/21 22:40:36 brad Exp $

COMMENT=	"image manipulation library"

DISTNAME=	imlib2-1.1.2
CATEGORIES=	graphics

HOMEPAGE=	http://www.enlightenment.org/pages/imlib2.html

MAINTAINER=	Francois Briere <fbriere@imaginatif.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS+=	jpeg.62::graphics/jpeg \
		ungif.5::graphics/libungif \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		bz2::archivers/bzip2 \
		ltdl::devel/libtool,-ltdl

USE_X11=	Yes
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
