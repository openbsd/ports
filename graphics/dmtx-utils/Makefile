# $OpenBSD: Makefile,v 1.3 2012/01/26 17:19:23 sthen Exp $

COMMENT =		tools for handling data matrix barcodes

DISTNAME =		dmtx-utils-0.7.4
REVISION =		1
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

# XXX ImageMagick-*-!no_x11 conflicts in bulk; disabled in ../Makefile for now
LIB_DEPENDS +=		ImageMagick-*-!no_x11:graphics/ImageMagick \
			graphics/libdmtx

SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
