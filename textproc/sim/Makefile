# $OpenBSD: Makefile,v 1.8 2017/05/15 18:34:20 schwarze Exp $

COMMENT =		tests lexical similarity in texts

DISTNAME =		sim_2_26
PKGNAME =		sim-2.26
REVISION =		1
CATEGORIES =		textproc

HOMEPAGE =		https://dickgrune.com/Programs/similarity_tester/

MAINTAINER =     	Laurent Fanis <laurent.fanis@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

EXTRACT_SUFX =		.zip
MASTER_SITES =		https://dickgrune.com/Programs/similarity_tester/

MAKE_FLAGS =		CC=${CC} CFLAGS="${CFLAGS} -DUNIX" LDFLAGS="${LDFLAGS}"

WRKDIST =		${WRKDIR}

NO_TEST =		Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/sim_* ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/sim.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
