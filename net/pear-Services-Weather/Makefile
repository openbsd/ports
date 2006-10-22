# $OpenBSD: Makefile,v 1.3 2006/10/22 13:11:14 mbalmer Exp $

COMMENT=	"interface to various online weather-services for PHP"

DISTNAME=	Services_Weather-1.3.2
PKGNAME=	pear-${DISTNAME:S/_/-/}
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
		
.include <bsd.port.mk>
