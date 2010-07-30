# $OpenBSD: Makefile,v 1.3 2010/07/30 21:14:09 sthen Exp $ 

COMMENT=	memo application, for Horde

HORDE_NAME=	Mnemo

DISTNAME=	mnemo-h3-2.2.3
REVISION=	1
CATEGORIES=	databases

# Horde (BSD-like with some restrictions, see LICENSE)

RUN_DEPENDS=	${HORDE_RUNDEP} \
		:php5-imap-*:www/php5/extensions,-imap

.include <bsd.port.mk>
