# $OpenBSD: Makefile,v 1.14 2000/12/14 13:23:01 espie Exp $
# $FreeBSD: Makefile,v 1.2 1997/11/10 11:33:04 asami Exp $

DISTNAME=	tcpshow-1.74
CATEGORIES=	net security
NEED_VERSION=	1.330
MASTER_SITES=	http://people.freebsd.org/~obrien/Distfiles/
DISTFILES=	tcpshow.c tcpshow.1

EXTRACT_CASES=*)cp ${FULLDISTDIR}/$$archive ${WRKDIST};;

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}

do-build:
	cd ${WRKSRC}; ${CC} ${CFLAGS} -DNOETHERNAMES -o tcpshow tcpshow.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpshow.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
