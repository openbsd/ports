# $OpenBSD: Makefile,v 1.29 2021/11/14 16:04:39 kirby Exp $

COMMENT =	digital camera RAW format conversion tool

DISTNAME =	dcraw-9.28.0
REVISION =	0
CATEGORIES =	graphics

HOMEPAGE =	https://www.dechifro.org/dcraw/

MASTER_SITES =	https://www.dechifro.org/dcraw/archive/

# Some code is completely free, some is under the GPL
PERMIT_PACKAGE =	Yes

WANTLIB =	c jasper jpeg lcms2 m

LIB_DEPENDS =	graphics/jasper \
		graphics/jpeg \
		graphics/lcms2

NO_TEST =	Yes
SEPARATE_BUILD = Yes

WRKDIST =	${WRKDIR}/dcraw

do-build:
	${CC} ${CFLAGS} -c -o ${WRKBUILD}/dcraw.o -I${PREFIX}/include \
		${WRKSRC}/dcraw.c
	${CC} ${CFLAGS} -o ${WRKBUILD}/dcraw -ljpeg -lm -llcms2 -ljasper \
		-L${PREFIX}/lib ${WRKBUILD}/dcraw.o

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dcraw ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dcraw.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
