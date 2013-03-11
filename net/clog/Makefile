# $OpenBSD: Makefile,v 1.23 2013/03/11 11:35:45 espie Exp $

COMMENT=	tcp connection logger daemon

DISTNAME=	clog-1.6
CATEGORIES=	net security

MASTER_SITES=	ftp://ftp.rediris.es/mirror/coast/tools/unix/logutils/clog/

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap

WRKDIST=	${WRKDIR}/clog
ALL_TARGET=	freebsd

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/clog ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/clog.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
