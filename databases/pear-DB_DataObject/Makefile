# $OpenBSD: Makefile,v 1.9 2012/10/23 09:44:02 sthen Exp $

COMMENT=	SQL builder, object interface to database tables

DISTNAME=	DB_DataObject-1.10.0
PKGNAME=	pear-${DISTNAME}# does not substitute _ for -
CATEGORIES=	databases

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/pear-MDB2

.include <bsd.port.mk>
