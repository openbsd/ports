# $OpenBSD: Makefile,v 1.7 2011/09/16 08:48:03 espie Exp $

COMMENT=	SQL builder, object interface to database tables

DISTNAME=	DB_DataObject-1.8.10
PKGNAME=	pear-${DISTNAME} # does not substitute _ for -
REVISION =	0
CATEGORIES=	databases

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/pear-MDB2

.include <bsd.port.mk>
