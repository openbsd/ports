# $OpenBSD: Makefile,v 1.9 2007/05/22 17:28:39 naddy Exp $

COMMENT=	"easy way to perform HTTP requests for PHP"

DISTNAME=	HTTP_Request-1.4.0
PKGNAME=	pear-${DISTNAME:S/_/-/}p1
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

RUN_DEPENDS=	::net/pear-Net-URL \
		::net/pear-Net-Socket

.include <bsd.port.mk>
