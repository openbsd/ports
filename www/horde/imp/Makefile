# $OpenBSD: Makefile,v 1.4 2010/07/30 22:42:06 sthen Exp $ 

COMMENT=	highly configurable pop3/imap4 webmail client

HORDE_NAME=	IMP

# GPLv2
DISTNAME=	imp-h3-4.3.7
REVISION=	1
CATEGORIES=	mail

RUN_DEPENDS=	:pear-Auth-SASL-*:security/pear-Auth-SASL \
		:pear-HTTP-Request-*:net/pear-HTTP-Request \
		:pear-Net-SMTP-*:net/pear-Net-SMTP \
		:php5-imap-*:www/php5/extensions,-imap

.include <bsd.port.mk>
