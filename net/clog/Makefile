# $OpenBSD: Makefile,v 1.14 2001/05/06 04:59:58 lebel Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1997/11/05 11:39:40 obrien Exp $

COMMENT=	"tcp connection logger daemon"

DISTNAME=	clog-1.6
CATEGORIES=	net security
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.auscert.org.au/pub/coast/mirrors/ftp.saturn.net/clog/ \
		ftp://ftp.rediris.es/mirror/coast/tools/unix/clog/

MAINTAINER=	ports@openbsd.org

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
