# $OpenBSD: Makefile,v 1.8 2011/07/09 00:14:45 robert Exp $

COMMENT=	highly configurable pop3/imap4 webmail client

HORDE_NAME=	IMP

# GPLv2
DISTNAME=	imp-h3-4.3.9
REVISION=	0
CATEGORIES=	mail

RUN_DEPENDS=	net/pear-HTTP-Request \
		net/pear-Net-SMTP \
		security/pear-Auth-SASL \
		lang/php/${MODPHP_VERSION},-imap

.include <bsd.port.mk>
