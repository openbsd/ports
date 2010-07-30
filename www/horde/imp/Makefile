# $OpenBSD: Makefile,v 1.1.1.1 2010/07/30 11:27:07 sthen Exp $ 

COMMENT=	highly configurable pop3/imap4 webmail client

HORDE_MODULE=	imp
HORDE_NAME=	IMP
V=		4.3.7

DISTNAME=	${HORDE_MODULE}-h3-${V}
CATEGORIES=	mail
HOMEPAGE=	http://www.horde.org/${HORDE_MODULE}/

# GPLv2

RUN_DEPENDS=	${HORDE_RUNDEP} \
		:pear-Auth-SASL-*:security/pear-Auth-SASL \
		:pear-HTTP-Request-*:net/pear-HTTP-Request \
		:pear-Net-SMTP-*:net/pear-Net-SMTP \
		:php5-imap-*:www/php5/extensions,-imap

.include <bsd.port.mk>
