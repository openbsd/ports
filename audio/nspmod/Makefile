#	$OpenBSD: Makefile,v 1.2 1998/10/06 23:28:07 marc Exp $
#

DISTNAME=	nspmod-0.1
CATEGORIES=	audio

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.jeton.or.jp/users/toru/www/orgsoft/nspmod/ \
		${MASTER_SITE_SUNSITE}/
MASTER_SITE_SUBDIR=	apps/sound/players

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nspmod ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nspmod.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
