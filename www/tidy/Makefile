# $OpenBSD: Makefile,v 1.2 2000/02/12 00:44:01 espie Exp $
# Original from: Bruno Rohée <rohee@OpenBSD.ORG>

TIDYDATE=	13jan00
DISTNAME=	tidy${TIDYDATE}
PKGNAME=	tidy-${TIDYDATE}
NEED_VERSION=	1.195

CATEGORIES=     www

MAINTAINER=	rohee@OpenBSD.ORG

MASTER_SITES=	http://www.w3.org/People/Raggett/
HOMEPAGE=	${MASTER_SITES}tidy/
EXTRACT_SUFX=	.tgz

# override program own Makefile (bad) settings
MAKE_FLAGS=	CC=${CC} CFLAGS=${CFLAGS}

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/tab2space ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/tidy ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/man_page.txt ${PREFIX}/man/man1/tidy.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tidy
	${INSTALL_DATA} ${WRKBUILD}/*.html ${WRKBUILD}/*.gif ${PREFIX}/share/doc/tidy

.include <bsd.port.mk>
