# $OpenBSD: Makefile,v 1.5 2000/05/20 00:31:53 rohee Exp $
# Original from: Bruno Rohée <rohee@OpenBSD.ORG>

TIDYDATE=	30apr00
DISTNAME=	tidy${TIDYDATE}
PKGNAME=	tidy-${TIDYDATE}

CATEGORIES=     www
NEED_VERSION=	1.195

MAINTAINER=	rohee@OpenBSD.ORG

MASTER_SITES=	http://www.w3.org/People/Raggett/
HOMEPAGE=	${MASTER_SITES}tidy/
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			Yes

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
