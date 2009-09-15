# $OpenBSD: Makefile,v 1.5 2009/09/15 17:37:21 jasper Exp $

COMMENT=	Framework for caching of arbitrary data for PHP

DISTNAME=	Cache-1.5.4
PKGNAME=	pear-${DISTNAME}p2
CATEGORIES=	devel pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-HTTP-Request-*:net/pear-HTTP-Request

.include <bsd.port.mk>
