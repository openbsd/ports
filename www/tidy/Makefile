# $OpenBSD: Makefile,v 1.13 2003/10/18 19:44:59 sturm Exp $

COMMENT=	"validate, correct, and pretty-print HTML files"

TIDYDATE=	4aug00
DISTNAME=	tidy${TIDYDATE}
PKGNAME=	tidy-${TIDYDATE}

CATEGORIES=     www

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

MASTER_SITES=	http://www.w3.org/People/Raggett/
HOMEPAGE=	http://www.w3.org/People/Raggett/tidy/
EXTRACT_SUFX=	.tgz

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# override program own Makefile (bad) settings
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/tab2space ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/tidy ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/man_page.txt ${PREFIX}/man/man1/tidy.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tidy
	${INSTALL_DATA} ${WRKBUILD}/*.html ${WRKBUILD}/*.gif ${PREFIX}/share/doc/tidy

.include <bsd.port.mk>
