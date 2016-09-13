# $OpenBSD: Makefile,v 1.12 2016/09/13 15:29:01 naddy Exp $

COMMENT =		tools for handling data matrix barcodes

DISTNAME =		dmtx-utils-0.7.4
REVISION =		7
CATEGORIES =		graphics

HOMEPAGE =		http://www.libdmtx.org/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdmtx/}

# LGPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xt
WANTLIB += bz2 c djvulibre dmtx expat fftw3 fontconfig freetype iconv
WANTLIB += jbig jpeg lcms2 lzma m openjp2 png pthread pthread-stubs
WANTLIB += tiff webp xcb xml2 z

LIB_DEPENDS +=		converters/libiconv \
			graphics/ImageMagick \
			graphics/libdmtx

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
