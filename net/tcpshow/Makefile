# $OpenBSD: Makefile,v 1.23 2010/10/18 18:36:58 espie Exp $
# $FreeBSD: Makefile,v 1.2 1997/11/10 11:33:04 asami Exp $

COMMENT=	decode tcpdump(1) output

DISTNAME=	tcpshow-1.74
CATEGORIES=	net security

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=obrien/}
DISTFILES=	tcpshow.c tcpshow.1

EXTRACT_CASES=	*)cp ${FULLDISTDIR}/$$archive ${WRKDIST};;

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKSRC}; ${CC} ${CFLAGS} -DNOETHERNAMES -o tcpshow tcpshow.c

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpshow.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
