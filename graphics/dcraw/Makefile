# $OpenBSD: Makefile,v 1.17 2013/03/11 11:10:52 espie Exp $

COMMENT =	digital camera RAW format conversion tool

DISTNAME =	dcraw-9.06
CATEGORIES =	graphics

HOMEPAGE =	http://www.cybercom.net/~dcoffin/dcraw/

MASTER_SITES =	http://cybercom.net/~dcoffin/dcraw/archive/

# Some code is completely free, some is under the GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c jpeg lcms m

LIB_DEPENDS =	graphics/jpeg \
		graphics/lcms

NO_TEST =	Yes
SEPARATE_BUILD = Yes
USE_GROFF =	Yes

WRKDIST =	${WRKDIR}/dcraw

do-build:
	${CC} ${CFLAGS} -c -o ${WRKBUILD}/dcraw.o -I${PREFIX}/include \
		${WRKSRC}/dcraw.c
	${CC} ${CFLAGS} -o ${WRKBUILD}/dcraw -ljpeg -lm -llcms -L${PREFIX}/lib \
		${WRKBUILD}/dcraw.o

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/dcraw ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/dcraw.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
