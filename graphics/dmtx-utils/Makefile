# $OpenBSD: Makefile,v 1.15 2019/07/12 20:46:57 sthen Exp $

COMMENT =		tools for handling data matrix barcodes

DISTNAME =		dmtx-utils-0.7.4
REVISION =		9
CATEGORIES =		graphics

HOMEPAGE =		http://www.libdmtx.org/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdmtx/}

# LGPLv2
PERMIT_PACKAGE =		Yes

WANTLIB += ${COMPILER_LIBCXX} ICE MagickCore-6.Q16 MagickWand-6.Q16
WANTLIB += SM X11 Xext Xt bz2 c djvulibre dmtx expat fftw3 fontconfig
WANTLIB += freetype iconv jasper jbig jpeg lcms2 lzma m openjp2
WANTLIB += png raw_r tiff webp webpmux xcb xml2 z

LIB_DEPENDS +=		converters/libiconv \
			graphics/ImageMagick \
			graphics/libdmtx

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
