# $OpenBSD: Makefile,v 1.4 2000/02/12 08:02:18 turan Exp $

DISTNAME=	an-0.93
CATEGORIES=	games
MASTER_SITES=	ftp://suburbia.net/pub/rmj/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MAKE_ENV=	DEFS=-DDEFDICT=\\\"/usr/share/dict/words\\\"
ALL_TARGET=	with-getopt

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/an ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/an.6 ${MANPREFIX}/man/man6

.include <bsd.port.mk>
