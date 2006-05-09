# $OpenBSD: Makefile,v 1.2 2006/05/09 14:16:50 robert Exp $

COMMENT=	"XML parsing class based on PHP's bundled expat"

DISTNAME=	XML_Parser-1.2.4
PKGNAME=	pear-${DISTNAME:S/_/-/}p0
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
