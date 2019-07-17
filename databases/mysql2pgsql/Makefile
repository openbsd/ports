# $OpenBSD: Makefile,v 1.12 2019/07/17 14:49:20 danj Exp $

COMMENT=	convert a MySQL dump to a PostgreSQL dump

DISTNAME=	mysql2pgsql
PKGNAME=	mysql2pgsql-20010320
REVISION=	1
CATEGORIES=	databases

MASTER_SITES=	http://www.rot13.org/~dpavlin/projects/sql/
EXTRACT_SUFX=	#empty

EXTRACT_ONLY=	#empty

HOMEPAGE=	http://www.rot13.org/~dpavlin/sql.html

RUN_DEPENDS=	databases/p5-DBI

PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/mysql2pgsql ${PREFIX}/bin

.include <bsd.port.mk>
