# $OpenBSD: Makefile,v 1.1.1.1 2001/03/30 21:08:25 danh Exp $

COMMENT=	"convert a MySQL dump to a PostgreSQL dump"

DISTNAME=	mysql2pgsql
PKGNAME=	mysql2pgsql-1.8
CATEGORIES=	databases
NEED_VERSION=	1.378
MASTER_SITES=	http://www.rot13.org/~dpavlin/projects/sql/
EXTRACT_SUFX=	#empty

EXTRACT_ONLY=	#empty

HOMEPAGE=	http://www.rot13.org/~dpavlin/projects.html

MAINTAINER=	Pete Fritchman <petef@databits.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${DISTDIR}/mysql2pgsql ${PREFIX}/bin

.include <bsd.port.mk>
