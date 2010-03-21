# $OpenBSD: Makefile,v 1.10 2010/03/21 01:17:13 sthen Exp $

COMMENT=	implementation of the IMAP protocol for PHP

DISTNAME=	Net_IMAP-1.1.0
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	net

MODULES=	www/pear

RUN_DEPENDS+=	:pear-Net-Socket->=1.0.8:net/pear-Net-Socket \
		:pear-Auth-SASL->=1.0.2:security/pear-Auth-SASL

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
