# $OpenBSD: Makefile,v 1.5 1999/04/01 02:57:51 brad Exp $

DISTNAME=	sox-12.15
CATEGORIES=	audio

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://metalab.unc.edu/pub/Linux/apps/sound/convert/ \
		http://home.sprynet.com/~cbagwell/

MAKEFILE=	Makefile.unx

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/sox ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/sox.1 ${PREFIX}/man/man1/sox.1

.include <bsd.port.mk>
