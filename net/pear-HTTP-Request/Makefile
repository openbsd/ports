# $OpenBSD: Makefile,v 1.4 2006/05/23 20:26:44 naddy Exp $

COMMENT=	"an easy way to perform HTTP requests for PHP"

V=		1.2.4
DISTNAME=	HTTP_Request-${V}
PKGNAME=	pear-HTTP-Request-${V}p1
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
