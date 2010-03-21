# $OpenBSD: Makefile,v 1.9 2010/03/21 01:17:33 sthen Exp $

COMMENT=	SMTP support for PHP

DISTNAME=	Net_SMTP-1.4.1
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	net

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-Net-Socket->=1.0.7:net/pear-Net-Socket \
		::security/pear-Auth-SASL

.include <bsd.port.mk>
