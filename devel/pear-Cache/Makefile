# $OpenBSD: Makefile,v 1.3 2007/03/22 22:48:03 robert Exp $

COMMENT=	"Framework for caching of arbitrary data for PHP"

DISTNAME=	Cache-1.5.4
PKGNAME=	pear-${DISTNAME}p1
CATEGORIES=	devel pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-HTTP-Request-*:net/pear-HTTP-Request

.include <bsd.port.mk>
