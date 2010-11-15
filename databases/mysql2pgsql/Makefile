# $OpenBSD: Makefile,v 1.8 2010/11/15 00:22:51 espie Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/mysql2pgsql ${PREFIX}/bin

.include <bsd.port.mk>
