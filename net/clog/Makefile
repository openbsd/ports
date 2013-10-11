# $OpenBSD: Makefile,v 1.24 2013/10/11 23:50:15 naddy Exp $

COMMENT=	tcp connection logger daemon

DISTNAME=	clog-1.6
CATEGORIES=	net security

MASTER_SITES=	ftp://ftp.rediris.es/mirror/coast/tools/unix/logutils/clog/

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pcap

WRKDIST=	${WRKDIR}/clog
ALL_TARGET=	freebsd

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/clog ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/clog.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
