# $OpenBSD: Makefile,v 1.1.1.1 2006/10/21 12:27:32 mbalmer Exp $

COMMENT=	"authentication system for PHP5"

DISTNAME=	Auth-1.2.4
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	security pear

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
