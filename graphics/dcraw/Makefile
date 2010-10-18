# $OpenBSD: Makefile,v 1.13 2010/10/18 18:13:13 espie Exp $

COMMENT =	digital camera RAW format conversion tool

DISTNAME =	dcraw-9.04
CATEGORIES =	graphics

HOMEPAGE =	http://www.cybercom.net/~dcoffin/dcraw/

MASTER_SITES =	http://cybercom.net/~dcoffin/dcraw/archive/

# Some code is completely free, some is under the GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c jpeg lcms m

LIB_DEPENDS =	::graphics/jpeg \
		::graphics/lcms

NO_REGRESS =	Yes
SEPARATE_BUILD = simple
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
