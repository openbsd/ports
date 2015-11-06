# $OpenBSD: Makefile,v 1.9 2015/11/06 20:37:34 sthen Exp $

COMMENT =		tools for handling data matrix barcodes

DISTNAME =		dmtx-utils-0.7.4
REVISION =		5
CATEGORIES =		graphics

HOMEPAGE =		http://www.libdmtx.org/

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdmtx/}

# LGPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xt
WANTLIB += bz2 c dmtx expat fftw3 fontconfig freetype lcms2 ltdl
WANTLIB += lzma m pthread pthread-stubs xcb z

MODULES =		converters/libiconv
LIB_DEPENDS +=		graphics/ImageMagick \
			graphics/libdmtx

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
