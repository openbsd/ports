# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:42 sthen Exp $

COMMENT=	implementation of the IMAP protocol for PHP

DISTNAME=	Net_IMAP-1.1.3
CATEGORIES=	net

MODULES=	www/pear

RUN_DEPENDS+=	net/pear-Net-Socket>=1.0.8 \
		security/pear-Auth-SASL>=1.0.2

# PHP License
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
