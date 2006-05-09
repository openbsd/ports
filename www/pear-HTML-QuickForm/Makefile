# $OpenBSD: Makefile,v 1.5 2006/05/09 14:16:50 robert Exp $

COMMENT=	"package provides methods for HTML forms"

DISTNAME=	HTML_QuickForm-3.2.4pl1
PKGNAME=	pear-${DISTNAME:S/_/-/}p0
CATEGORIES=	devel www pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MODULES=	www/php5/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-HTML-Common2->=0.1.0:www/pear-HTML-Common2

.include <bsd.port.mk>
