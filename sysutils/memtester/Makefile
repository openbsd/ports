# $OpenBSD: Makefile,v 1.11 2015/02/17 21:40:43 naddy Exp $

COMMENT=	utility to test for memory faults

DISTNAME=	memtester-4.1.3
REVISION=	1
CATEGORIES=	sysutils

HOMEPAGE=	http://pyropus.ca/software/memtester/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}/old-versions/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/memtester ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/memtester.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
