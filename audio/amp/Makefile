# $OpenBSD: Makefile,v 1.5 1999/09/06 19:10:15 brad Exp $

DISTNAME=	amp-0.7.6
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.clara.net/pub/unix/Audio/

MAINTAINER=	angelos@openbsd.org

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/amp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/amp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
