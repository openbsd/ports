# $OpenBSD: Makefile,v 1.7 1999/06/03 21:55:22 espie Exp $

DISTNAME=	sox-12.15
CATEGORIES=	audio
MASTER_SITES=	http://metalab.unc.edu/pub/Linux/apps/sound/convert/ \
		http://home.sprynet.com/~cbagwell/

MAINTAINER=	angelos@openbsd.org

MAKEFILE=	Makefile.unx
MAKE_ENV=MISC_DEFINES='-Dunix ${CFLAGS}'

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/sox ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/sox.1 ${PREFIX}/man/man1/sox.1

.include <bsd.port.mk>
