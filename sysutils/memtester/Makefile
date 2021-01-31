# $OpenBSD: Makefile,v 1.15 2021/01/31 19:55:17 sthen Exp $

COMMENT=	utility to test for memory faults

DISTNAME=	memtester-4.5.0
CATEGORIES=	sysutils

HOMEPAGE=	http://pyropus.ca/software/memtester/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}/old-versions/

# probably doesn't work with strict-alignment
.if ${MACHINE_ARCH} != sparc64
CFLAGS+=	-DTEST_NARROW_WRITES
.endif

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/memtester ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/memtester.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
