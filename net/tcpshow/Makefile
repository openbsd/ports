# $OpenBSD: Makefile,v 1.11 2000/03/24 22:11:54 espie Exp $
# $FreeBSD: Makefile,v 1.2 1997/11/10 11:33:04 asami Exp $

DISTNAME=	tcpshow-1.74
CATEGORIES=	net security
NEED_VERSION=	1.191
MASTER_SITES=	http://www.freebsd.org/~obrien/
DISTFILES=	tcpshow.c tcpshow.1

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
EXTRACT_CMD=	cp	
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= .

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -DNOETHERNAMES -o tcpshow tcpshow.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpshow ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpshow.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
