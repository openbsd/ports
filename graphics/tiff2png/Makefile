# $OpenBSD: Makefile,v 1.6 2002/05/26 17:35:53 brad Exp $

COMMENT=	"converts TIFF images to PNG format"

DISTNAME=	tiff2png-0.81c
CATEGORIES=	graphics
NEED_VERSION=	1.525
MASTER_SITES=	ftp://swrinde.nde.swri.edu/pub/png/applications/

HOMEPAGE=	http://www.libpng.org/pub/png/apps/tiff2png.html

LIB_DEPENDS=	tiff.35::graphics/tiff \
		png.2::graphics/png

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPTIMFLAGS="${CFLAGS}" DEBUGFLAGS="-Wall -W" \
		CFLAGS='$$(TIFF_VERSION) -DFAXPECT $$(MIN_INVERT) $$(OPTIMFLAGS) $$(DEBUGFLAGS) -I${LOCALBASE}/include/libpng -I${LOCALBASE}/include' \
		LDFLAGS="-L${LOCALBASE}/lib -lpng -lz -ltiff -ljpeg -lm"

MAKE_FILE=	Makefile.unx

ALL_TARGET=	tiff2png

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tiff2png ${PREFIX}/bin

.include <bsd.port.mk>
