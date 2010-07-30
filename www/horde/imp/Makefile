# $OpenBSD: Makefile,v 1.2 2010/07/30 15:31:17 sthen Exp $ 

COMMENT=	highly configurable pop3/imap4 webmail client

HORDE_NAME=	IMP

DISTNAME=	imp-h3-4.3.7
REVISION=	0
CATEGORIES=	mail

# GPLv2

RUN_DEPENDS=	${HORDE_RUNDEP} \
		:pear-Auth-SASL-*:security/pear-Auth-SASL \
		:pear-HTTP-Request-*:net/pear-HTTP-Request \
		:pear-Net-SMTP-*:net/pear-Net-SMTP \
		:php5-imap-*:www/php5/extensions,-imap

.include <bsd.port.mk>
