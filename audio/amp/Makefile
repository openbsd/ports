# $OpenBSD: Makefile,v 1.4 1999/04/01 02:57:50 brad Exp $

DISTNAME=	amp-0.7.6
CATEGORIES=	audio

MAINTAINER=	angelos@openbsd.org

#MASTER_SITES=	ftp://ftp.rasip.fer.hr/pub/mpeg/
# the author's site seems dead.
MASTER_SITES=	ftp://ftp.clara.net/pub/unix/Audio/

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/amp ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/amp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
