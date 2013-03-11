# $OpenBSD: Makefile,v 1.14 2013/03/11 11:35:54 espie Exp $

COMMENT=	implementation of the IMAP protocol for PHP

DISTNAME=	Net_IMAP-1.1.0
REVISION=		0
CATEGORIES=	net

MODULES=	www/pear

RUN_DEPENDS+=	net/pear-Net-Socket>=1.0.8 \
		security/pear-Auth-SASL>=1.0.2

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
