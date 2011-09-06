# $OpenBSD: Makefile,v 1.10 2011/09/06 20:09:12 sthen Exp $

COMMENT=	highly configurable pop3/imap4 webmail client

HORDE_NAME=	IMP

# GPLv2
DISTNAME=	imp-h3-4.3.10
CATEGORIES=	mail

RUN_DEPENDS=	net/pear-HTTP-Request \
		net/pear-Net-SMTP \
		security/pear-Auth-SASL \
		lang/php/${MODPHP_VERSION},-imap

.include <bsd.port.mk>
