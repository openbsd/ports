# $OpenBSD: Makefile,v 1.7 2014/03/25 21:20:39 espie Exp $

COMMENT =		tests lexical similarity in texts

DISTNAME =		sim_2_26
PKGNAME =		sim-2.26
REVISION =		1
CATEGORIES =		textproc

HOMEPAGE =		http://www.cs.vu.nl/~dick/sim.html

MAINTAINER =     	Laurent Fanis <laurent.fanis@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

EXTRACT_SUFX =		.zip
MASTER_SITES =		ftp://ftp.cs.vu.nl/pub/dick/similarity_tester/

MAKE_FLAGS =		CC=${CC} CFLAGS="${CFLAGS} -DUNIX" LDFLAGS="${LDFLAGS}"
USE_GROFF =		Yes

WRKDIST =		${WRKDIR}

NO_TEST =		Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/sim_* ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/sim.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
