# $OpenBSD: Makefile,v 1.4 2005/03/02 14:26:48 mbalmer Exp $

COMMENT=	"package provides methods for HTML forms"

DISTNAME=	HTML_QuickForm-3.2.4pl1
PKGNAME=	pear-${DISTNAME:S/_/-/}
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
