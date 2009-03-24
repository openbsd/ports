# $OpenBSD: Makefile,v 1.2 2009/03/24 09:11:40 laurent Exp $
COMMENT =		tests lexical similarity in texts

DISTNAME =               sim_2_26
PKGNAME =                sim-2.26
CATEGORIES =		textproc

HOMEPAGE =		http://www.cs.vu.nl/~dick/sim.html

MAINTAINER =     	Laurent Fanis <laurent@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

EXTRACT_SUFX =		.zip
MASTER_SITES =		ftp://ftp.cs.vu.nl/pub/dick/similarity_tester/

MAKE_FLAGS =		CC=${CC} CFLAGS="${CFLAGS} -DUNIX" LDFLAGS="${LDFLAGS}"

WRKDIST =		${WRKDIR}

NO_REGRESS =		Yes

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/sim_* ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/sim.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
