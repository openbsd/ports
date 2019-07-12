# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:11 sthen Exp $

COMMENT =	converts TIFF images to PNG format

DISTNAME =	tiff2png-0.91
REVISION =	1
CATEGORIES =	graphics

HOMEPAGE =	http://www.libpng.org/pub/png/apps/tiff2png.html

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

LIB_DEPENDS =	graphics/tiff \
		graphics/png

WANTLIB =	c jpeg m z tiff>=35 png>=8

# custom, see tiff2png.c
PERMIT_PACKAGE =	Yes


MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=png-mng/}

MAKE_FLAGS =	CC="${CC}" OPTIMFLAGS="${CFLAGS}" DEBUGFLAGS="-Wall -W" \
		CFLAGS='$$(TIFF_VERSION) -DFAXPECT $$(MIN_INVERT) $$(OPTIMFLAGS) $$(DEBUGFLAGS) -I${LOCALBASE}/include' \
		LDFLAGS="-L${LOCALBASE}/lib -lpng -lz -ltiff -ljpeg -lm"

MAKE_FILE =	Makefile.unx

ALL_TARGET =	tiff2png

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tiff2png ${PREFIX}/bin

.include <bsd.port.mk>
