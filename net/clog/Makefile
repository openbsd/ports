# $OpenBSD: Makefile,v 1.15 2001/10/28 13:05:48 espie Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1997/11/05 11:39:40 obrien Exp $

COMMENT=	"tcp connection logger daemon"

DISTNAME=	clog-1.6
CATEGORIES=	net security
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.auscert.org.au/pub/coast/mirrors/ftp.saturn.net/clog/ \
		ftp://ftp.rediris.es/mirror/coast/tools/unix/clog/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/clog
ALL_TARGET=	freebsd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/clog ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/clog.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
