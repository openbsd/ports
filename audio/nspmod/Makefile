# OpenBSD makefile for:			nspmod-0.1
# Version required:			0.1
# Date created:				May 20 1998
# Whom:					Angelos D. Keromytis
#
#	$OpenBSD: Makefile,v 1.1.1.1 1998/05/21 01:01:43 angelos Exp $
#

DISTNAME=	nspmod-0.1
CATEGORIES=	audio
MASTER_SITES=	http://www.jeton.or.jp/users/toru/www/orgsoft/nspmod/	\
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/sound/players

MAINTAINER=	angelos@openbsd.org

MAN1=		nspmod.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nspmod ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nspmod.1 ${MANPREFIX}/man/man1

.include <bsd.port.mk>
