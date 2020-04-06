# $OpenBSD: Makefile,v 1.18 2020/04/06 00:04:31 pirofti Exp $

COMMENT=	ODBC driver for PostgreSQL
VERSION=	10.02.0000
PKGNAME=	postgresql-odbc-${VERSION}
DISTNAME=	psqlodbc-${VERSION}
CATEGORIES=	databases

HOMEPAGE=	https://odbc.postgresql.org/

MAINTAINER=	Paul Irofti <paul@irofti.net>

# LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://ftp.postgresql.org/pub/odbc/versions/src/

LIB_DEPENDS =		databases/postgresql>=10.3 \
			databases/iodbc

WANTLIB =		pq iodbc iodbcinst pthread crypto ssl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-iodbc --without-unixodbc

NO_TEST=		Yes

.include <bsd.port.mk>
