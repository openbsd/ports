# $OpenBSD: Makefile,v 1.5 2007/09/15 22:36:58 merdely Exp $

COMMENT=	SMTP support for PHP

DISTNAME=	Net_SMTP-1.2.6
PKGNAME=	pear-${DISTNAME:S/_/-/}p2
CATEGORIES=	net pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-Net-Socket->=1.0.6:net/pear-Net-Socket

.include <bsd.port.mk>
