# $OpenBSD: Makefile,v 1.2 2001/04/04 13:59:46 danh Exp $

COMMENT=	"convert a MySQL dump to a PostgreSQL dump"

DISTNAME=	mysql2pgsql
PKGNAME=	mysql2pgsql-20010320
CATEGORIES=	databases
NEED_VERSION=	1.378
MASTER_SITES=	http://www.rot13.org/~dpavlin/projects/sql/
EXTRACT_SUFX=	#empty

EXTRACT_ONLY=	#empty

HOMEPAGE=	http://www.rot13.org/~dpavlin/projects.html

RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/DBI.pm::databases/p5-DBI

MAINTAINER=	Pete Fritchman <petef@databits.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

do-install:
	${INSTALL_SCRIPT} ${DISTDIR}/mysql2pgsql ${PREFIX}/bin

.include <bsd.port.mk>
