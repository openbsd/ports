# $OpenBSD: Makefile,v 1.6 1999/06/03 20:42:39 brad Exp $

DISTNAME=	sox-12.15
CATEGORIES=	audio
MASTER_SITES=	http://metalab.unc.edu/pub/Linux/apps/sound/convert/ \
		http://home.sprynet.com/~cbagwell/

MAINTAINER=	angelos@openbsd.org

MAKEFILE=	Makefile.unx

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/sox ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/sox.1 ${PREFIX}/man/man1/sox.1

.include <bsd.port.mk>
