# $OpenBSD: Makefile,v 1.14 2009/12/20 17:10:04 benoit Exp $

COMMENT =	converts TIFF images to PNG format

DISTNAME =	tiff2png-0.91
PKGNAME =	${DISTNAME}p0
CATEGORIES =	graphics

HOMEPAGE =	http://www.libpng.org/pub/png/apps/tiff2png.html

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

LIB_DEPENDS =	tiff.>=35::graphics/tiff \
		png.>=8::graphics/png

# custom, see tiff2png.c
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c jpeg m z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=png-mng/}

MAKE_FLAGS =	CC="${CC}" OPTIMFLAGS="${CFLAGS}" DEBUGFLAGS="-Wall -W" \
		CFLAGS='$$(TIFF_VERSION) -DFAXPECT $$(MIN_INVERT) $$(OPTIMFLAGS) $$(DEBUGFLAGS) -I${LOCALBASE}/include/libpng -I${LOCALBASE}/include' \
		LDFLAGS="-L${LOCALBASE}/lib -lpng -lz -ltiff -ljpeg -lm"

MAKE_FILE =	Makefile.unx

ALL_TARGET =	tiff2png

NO_REGRESS =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tiff2png ${PREFIX}/bin

.include <bsd.port.mk>
