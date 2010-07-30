# $OpenBSD: Makefile,v 1.1.1.1 2010/07/30 11:27:07 sthen Exp $ 

COMMENT=	memo application

HORDE_NAME=	Mnemo

DISTNAME=	mnemo-h3-2.2.3
CATEGORIES=	databases

# Horde (BSD-like with some restrictions, see LICENSE)

RUN_DEPENDS=	${HORDE_RUNDEP} \
		:php5-imap-*:www/php5/extensions,-imap

.include <bsd.port.mk>
