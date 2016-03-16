# $OpenBSD: Makefile,v 1.15 2016/03/16 21:19:38 naddy Exp $

COMMENT=	ODBC driver for PostgreSQL
VERSION=	09.03.0400
PKGNAME=	postgresql-odbc-${VERSION}
DISTNAME=	psqlodbc-${VERSION}
CATEGORIES=	databases

HOMEPAGE=	https://odbc.postgresql.org/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://ftp.postgresql.org/pub/odbc/versions/src/

LIB_DEPENDS =		databases/postgresql>=9.3 \
			databases/iodbc

WANTLIB =		pq iodbc iodbcinst pthread crypto ssl

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-iodbc --without-unixodbc

NO_TEST=		Yes

.include <bsd.port.mk>
