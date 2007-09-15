# $OpenBSD: Makefile,v 1.22 2007/09/15 22:36:59 merdely Exp $
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

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpshow.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
