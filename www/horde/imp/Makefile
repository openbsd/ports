# $OpenBSD: Makefile,v 1.13 2012/02/16 21:19:30 sthen Exp $

COMMENT=	highly configurable pop3/imap4 webmail client

HORDE_NAME=	IMP

# GPLv2
DISTNAME=	imp-h3-4.3.11
CATEGORIES=	mail

RUN_DEPENDS=	net/pear-HTTP-Request \
		net/pear-Net-SMTP \
		security/pear-Auth-SASL \
		lang/php/${MODPHP_VERSION},-imap

.include <bsd.port.mk>
