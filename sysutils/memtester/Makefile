# $OpenBSD: Makefile,v 1.6 2010/06/27 04:59:13 ckuethe Exp $

COMMENT=	utility to test for memory faults

DISTNAME=	memtester-4.1.3

CATEGORIES=	sysutils

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

HOMEPAGE=	http://pyropus.ca/software/memtester/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/old-versions/

NO_REGRESS=	Yes
WANTLIB=c

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/memtester ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/memtester.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
