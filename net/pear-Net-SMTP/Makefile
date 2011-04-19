# $OpenBSD: Makefile,v 1.11 2011/04/19 14:13:27 giovanni Exp $

COMMENT=	SMTP support for PHP

DISTNAME=	Net_SMTP-1.5.1
PKGNAME=	pear-${DISTNAME:S/_/-/}
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
