# $OpenBSD: Makefile,v 1.7 2006/10/28 22:19:00 mbalmer Exp $

COMMENT=	"an easy way to perform HTTP requests for PHP"

DISTNAME=	HTTP_Request-1.4.0
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

RUN_DEPENDS=	::net/pear-Net-URL \
		::net/pear-Net-Socket

.include <bsd.port.mk>
