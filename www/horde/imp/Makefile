# $OpenBSD: Makefile,v 1.12 2011/11/16 15:56:37 robert Exp $

COMMENT=	highly configurable pop3/imap4 webmail client

HORDE_NAME=	IMP

# GPLv2
DISTNAME=	imp-h3-4.3.10
REVISION=	1
CATEGORIES=	mail

RUN_DEPENDS=	net/pear-HTTP-Request \
		net/pear-Net-SMTP \
		security/pear-Auth-SASL \
		lang/php/${MODPHP_VERSION},-imap

.include <bsd.port.mk>
