# $OpenBSD: Makefile,v 1.18 2016/05/30 15:14:44 sthen Exp $

COMMENT=	SMTP support for PHP

DISTNAME=	Net_SMTP-1.7.2
CATEGORIES=	net

MODULES=	www/pear

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/pear-Net-Socket>=1.0.7 \
		security/pear-Auth-SASL

.include <bsd.port.mk>
