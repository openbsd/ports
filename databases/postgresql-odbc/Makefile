# $OpenBSD: Makefile,v 1.12 2014/04/21 23:31:09 sthen Exp $

COMMENT=	ODBC driver for PostgreSQL
VERSION=	08.03.0400
PKGNAME=	postgresql-odbc-${VERSION}
DISTNAME=	psqlodbc-${VERSION}
CATEGORIES=	databases
REVISION=	2

HOMEPAGE=	http://pgfoundry.org/projects/psqlodbc/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp9.us.postgresql.org/pub/mirrors/postgresql/odbc/versions/src/

SHARED_ONLY =		Yes

LIB_DEPENDS =		databases/postgresql>=8.3 \
			databases/iodbc

WANTLIB =		pq iodbc iodbcinst pthread crypto ssl

USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.60
CONFIGURE_ARGS+=	--with-iodbc --without-unixodbc --enable-pthreads
COPTS+=			-I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_TEST=		Yes

.include <bsd.port.mk>
