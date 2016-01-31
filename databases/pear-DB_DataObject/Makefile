# $OpenBSD: Makefile,v 1.11 2016/01/31 10:25:39 benoit Exp $

COMMENT=	SQL builder, object interface to database tables

DISTNAME =	DB_DataObject-1.11.5
PKGNAME=	pear-${DISTNAME}# does not substitute _ for -
CATEGORIES=	databases

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =	databases/pear-MDB2 \
		devel/pear-Date

.include <bsd.port.mk>
