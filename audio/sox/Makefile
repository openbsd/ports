# $OpenBSD: Makefile,v 1.10 2000/02/22 17:08:36 espie Exp $

DISTNAME=	sox-12.15
CATEGORIES=	audio
MASTER_SITES=	http://home.sprynet.com/~cbagwell/
NEED_VERSION=	1.210

MAINTAINER=	angelos@openbsd.org

MAKE_FILE=	Makefile.unx
MAKE_ENV=	MISC_DEFINES='-Dunix ${CFLAGS}'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sox ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sox.1 ${PREFIX}/man/man1/sox.1

.include <bsd.port.mk>
