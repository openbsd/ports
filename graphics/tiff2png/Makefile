# $OpenBSD: Makefile,v 1.2 2000/09/24 07:04:09 brad Exp $

DISTNAME=	tiff2png-0.81
CATEGORIES=	graphics
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.libpng.org/pub/png/src/ \
		ftp://swrinde.nde.swri.edu/pub/png/applications/

HOMEPAGE=	http://www.libpng.org/pub/png/apps/tiff2png.html

LIB_DEPENDS=	tiff.35::graphics/tiff \
		png.1::graphics/png

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" OPTIMFLAGS="${CFLAGS}" DEBUGFLAGS="-Wall -W" \
		CFLAGS='$$(TIFF_VERSION) -DFAXPECT $$(MIN_INVERT) $$(OPTIMFLAGS) $$(DEBUGFLAGS) -I${LOCALBASE}/include' \
		LDFLAGS="-L. -L${LOCALBASE}/lib -lpng -lz -ltiff -ljpeg -lm"

ALL_TARGET=	tiff2png

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tiff2png ${PREFIX}/bin

.include <bsd.port.mk>
