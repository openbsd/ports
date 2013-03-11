# $OpenBSD: Makefile,v 1.9 2013/03/11 02:52:05 espie Exp $

COMMENT=	convert a MySQL dump to a PostgreSQL dump

DISTNAME=	mysql2pgsql
PKGNAME=	mysql2pgsql-20010320
CATEGORIES=	databases

MASTER_SITES=	http://www.rot13.org/~dpavlin/projects/sql/
EXTRACT_SUFX=	#empty

EXTRACT_ONLY=	#empty

HOMEPAGE=	http://www.rot13.org/~dpavlin/projects.html

RUN_DEPENDS=	databases/p5-DBI

MAINTAINER=	Pete Fritchman <petef@databits.net>

PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/mysql2pgsql ${PREFIX}/bin

.include <bsd.port.mk>
