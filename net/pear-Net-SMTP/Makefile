# $OpenBSD: Makefile,v 1.3 2006/10/22 13:05:41 mbalmer Exp $

COMMENT=	"SMTP support for PHP"

DISTNAME=	Net_SMTP-1.2.6
PKGNAME=	pear-${DISTNAME:S/_/-/}p1
CATEGORIES=	net pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php5/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-Net-Socket->=1.0.6:net/pear-Net-Socket

.include <bsd.port.mk>
