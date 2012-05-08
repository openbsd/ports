# $OpenBSD: Makefile,v 1.5 2012/05/08 17:57:26 okan Exp $

COMMENT =		tools for handling data matrix barcodes

DISTNAME =		dmtx-utils-0.7.4
REVISION =		2
CATEGORIES =		graphics

HOMEPAGE =		http://www.libdmtx.org/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libdmtx/}

# LGPLv2
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

WANTLIB += ICE MagickCore MagickWand SM X11 Xext Xt bz2 c djvulibre
WANTLIB += dmtx expat fftw3 fontconfig freetype iconv jasper jbig jpeg
WANTLIB += lcms2 ltdl lzma png pthread tiff wmf wmflite xcb xml2
WANTLIB += m z

LIB_DEPENDS +=		graphics/ImageMagick>=6.6.6.10p7 \
			graphics/libdmtx

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
