# $OpenBSD: Makefile,v 1.1.1.1 2005/02/28 12:35:42 mbalmer Exp $

COMMENT=	"XML parsing class based on PHP's bundled expat"

DISTNAME=	XML_Parser-1.2.4
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	textproc pear

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
