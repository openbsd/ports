# $OpenBSD: Makefile,v 1.3 1999/09/28 17:53:28 brad Exp $

DISTNAME=	an-0.93
CATEGORIES=	games
MASTER_SITES=	ftp://suburbia.net/pub/rmj/

MAINTAINER=	angelos@openbsd.org

MAKE_ENV=	DEFS=-DDEFDICT=\\\"/usr/share/dict/words\\\"
ALL_TARGET=	with-getopt

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/an ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/an.6 ${MANPREFIX}/man/man6

.include <bsd.port.mk>
