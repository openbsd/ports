# $OpenBSD: Makefile,v 1.5 2005/02/28 12:29:19 mbalmer Exp $

COMMENT=	"base package for HTML handling in PHP"

DISTNAME=	HTML_Common-1.2.1
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	devel www pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php4/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
