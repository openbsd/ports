# OpenBSD makefile for:	an
# Version required:	0.93
# Date created:		July 11 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/07/12 04:42:27 angelos Exp $
#

DISTNAME=	an-0.93
CATEGORIES=	games
MASTER_SITES=	ftp://suburbia.net/pub/rmj/ \
		ftp://ftp.suburbia.net/pub/rmj/

MAINTAINER=	angelos@openbsd.org

MAKE_ENV+=	DEFS=-DDEFDICT=\\\"/usr/share/dict/words\\\"
ALL_TARGET=	with-getopt
MAN6=		an.6

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/an ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/an.6 ${MANPREFIX}/man/man6

.include <bsd.port.mk>
