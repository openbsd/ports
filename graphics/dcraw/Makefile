# $OpenBSD: Makefile,v 1.19 2014/03/09 21:57:06 sthen Exp $

COMMENT =	digital camera RAW format conversion tool

DISTNAME =	dcraw-9.20
CATEGORIES =	graphics

HOMEPAGE =	http://www.cybercom.net/~dcoffin/dcraw/

MASTER_SITES =	http://cybercom.net/~dcoffin/dcraw/archive/

# Some code is completely free, some is under the GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c jasper jpeg lcms m

LIB_DEPENDS =	graphics/jasper \
		graphics/jpeg \
		graphics/lcms

NO_TEST =	Yes
SEPARATE_BUILD = Yes
USE_GROFF =	Yes

WRKDIST =	${WRKDIR}/dcraw

do-build:
	${CC} ${CFLAGS} -c -o ${WRKBUILD}/dcraw.o -I${PREFIX}/include \
		${WRKSRC}/dcraw.c
	${CC} ${CFLAGS} -o ${WRKBUILD}/dcraw -ljpeg -lm -llcms -ljasper \
		-L${PREFIX}/lib ${WRKBUILD}/dcraw.o

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dcraw ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dcraw.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
