# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:46 sthen Exp $

COMMENT=	utility to test for memory faults

DISTNAME=	memtester-4.3.0
REVISION=	0
CATEGORIES=	sysutils

HOMEPAGE=	http://pyropus.ca/software/memtester/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}/old-versions/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/memtester ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/memtester.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
