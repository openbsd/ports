# $OpenBSD: Makefile,v 1.10 2013/10/11 23:50:57 naddy Exp $

COMMENT=	utility to test for memory faults

DISTNAME=	memtester-4.1.3
REVISION=	0
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
