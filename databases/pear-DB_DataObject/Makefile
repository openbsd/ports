# $OpenBSD: Makefile,v 1.2 2009/03/19 20:18:04 jasper Exp $

COMMENT=	SQL builder, object interface to database tables

DISTNAME=	DB_DataObject-1.8.10
PKGNAME=	pear-${DISTNAME}
CATEGORIES=	databases pear

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

RUN_DEPENDS=	::databases/pear-MDB2

.include <bsd.port.mk>
