# $OpenBSD: Makefile,v 1.1.1.1 2007/03/15 15:49:06 ckuethe Exp $

COMMENT=	"Utility to test for faulty memory system"

DISTNAME=	memtester-4.0.6

CATEGORIES=	sysutils

MAINTAINER=	Chris Kuethe <chris.kuethe@ualberta.ca>

HOMEPAGE=	http://pyropus.ca/software/memtester/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes
WANTLIB=c

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/memtester ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/memtester.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
