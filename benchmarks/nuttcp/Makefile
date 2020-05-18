# $OpenBSD: Makefile,v 1.1.1.1 2020/05/18 13:38:42 bluhm Exp $

COMMENT =	network performance measurement tool

DISTNAME =	nuttcp-8.2.2

CATEGORIES =	benchmarks

HOMEPAGE =	https://www.nuttcp.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		https://nuttcp.net/nuttcp/

EXTRACT_SUFX =		.tar.bz2

SEPARATE_BUILD =	Yes

NO_TEST =		Yes

# get rid of 12 MB unneeded crap
post-extract:
	rm -rf -- ${WRKDIST}/cygwin/

do-build:
	cd ${WRKBUILD} && ${CC} ${CFLAGS} ${WRKSRC}/nuttcp.c -o nuttcp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/nuttcp ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKDIST}/nuttcp.8 ${PREFIX}/man/man8/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nuttcp/
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/nuttcp/
	${INSTALL_DATA} ${WRKDIST}/examples.txt ${PREFIX}/share/doc/nuttcp/

.include <bsd.port.mk>
