# $OpenBSD: Makefile,v 1.15 2014/11/15 23:35:33 sthen Exp $

COMMENT=	implementation of the IMAP protocol for PHP

DISTNAME=	Net_IMAP-1.1.3
CATEGORIES=	net

MODULES=	www/pear

RUN_DEPENDS+=	net/pear-Net-Socket>=1.0.8 \
		security/pear-Auth-SASL>=1.0.2

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
