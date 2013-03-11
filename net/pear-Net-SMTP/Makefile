# $OpenBSD: Makefile,v 1.15 2013/03/11 11:35:54 espie Exp $

COMMENT=	SMTP support for PHP

DISTNAME=	Net_SMTP-1.5.2
REVISION=		0
CATEGORIES=	net

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/pear-Net-Socket>=1.0.7 \
		security/pear-Auth-SASL

.include <bsd.port.mk>
