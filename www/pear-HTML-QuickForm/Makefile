# $OpenBSD: Makefile,v 1.2 2004/07/27 06:34:43 kevlo Exp $

COMMENT=	"package provides methods for HTML forms"

V=		3.2.3
DISTNAME=	HTML_QuickForm-${V}
PKGNAME=	pear-HTML-QuickForm-${V}
CATEGORIES=	devel www pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MODULES=	pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-HTML-Common->=1.2.1:www/pear-HTML-Common
.include <bsd.port.mk>
