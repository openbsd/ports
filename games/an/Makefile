# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:54 marc Exp $
#

DISTNAME=	an-0.93
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://suburbia.net/pub/rmj/ \
		ftp://ftp.suburbia.net/pub/rmj/

MAKE_ENV+=	DEFS=-DDEFDICT=\\\"/usr/share/dict/words\\\"
ALL_TARGET=	with-getopt

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/an ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/an.6 ${MANPREFIX}/man/man6

.include <bsd.port.mk>
