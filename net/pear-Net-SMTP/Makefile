# $OpenBSD: Makefile,v 1.7 2009/11/06 08:32:37 jasper Exp $

COMMENT=	SMTP support for PHP

DISTNAME=	Net_SMTP-1.2.6
PKGNAME=	pear-${DISTNAME:S/_/-/}p3
CATEGORIES=	net pear

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-Net-Socket->=1.0.6:net/pear-Net-Socket

.include <bsd.port.mk>
