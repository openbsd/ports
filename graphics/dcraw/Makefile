# $OpenBSD: Makefile,v 1.23 2015/02/16 22:57:08 naddy Exp $

COMMENT =	digital camera RAW format conversion tool

DISTNAME =	dcraw-9.23
REVISION =	0
CATEGORIES =	graphics

HOMEPAGE =	http://www.cybercom.net/~dcoffin/dcraw/

MASTER_SITES =	http://cybercom.net/~dcoffin/dcraw/archive/

# Some code is completely free, some is under the GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c jasper jpeg lcms2 m pthread

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
