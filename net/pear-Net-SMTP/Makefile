# $OpenBSD: Makefile,v 1.16 2015/02/10 11:34:50 sthen Exp $

COMMENT=	SMTP support for PHP

DISTNAME=	Net_SMTP-1.6.2
CATEGORIES=	net

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/pear-Net-Socket>=1.0.7 \
		security/pear-Auth-SASL

.include <bsd.port.mk>
