# $OpenBSD: Makefile,v 1.4 1999/09/06 18:21:42 brad Exp $

DISTNAME=	nspmod-0.1
CATEGORIES=	audio
MASTER_SITES=	http://www.jeton.or.jp/users/toru/www/orgsoft/nspmod/ \
		${MASTER_SITE_SUNSITE}/
MASTER_SITE_SUBDIR= apps/sound/players

MAINTAINER=	angelos@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nspmod ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nspmod.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
