# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:31 espie Exp $

COMMENT=	utility to test for memory faults

DISTNAME=	memtester-4.1.3

CATEGORIES=	sysutils

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

HOMEPAGE=	http://pyropus.ca/software/memtester/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/old-versions/

USE_GROFF =	Yes
NO_TEST=	Yes
WANTLIB=c

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/memtester ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/memtester.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
