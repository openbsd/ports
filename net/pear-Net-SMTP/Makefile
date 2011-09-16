# $OpenBSD: Makefile,v 1.14 2011/09/16 11:13:39 espie Exp $

COMMENT=	SMTP support for PHP

DISTNAME=	Net_SMTP-1.5.2
REVISION=		0
CATEGORIES=	net

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/pear-Net-Socket>=1.0.7 \
		security/pear-Auth-SASL

.include <bsd.port.mk>
