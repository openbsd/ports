# $Id: Makefile,v 1.4 2010/11/06 22:50:02 espie Exp $

COMMENT=	ODBC driver for PostgreSQL
VERSION=	08.03.0400
PKGNAME=	postgresql-odbc-${VERSION}
DISTNAME=	psqlodbc-${VERSION}
CATEGORIES=	databases

HOMEPAGE=	http://pgfoundry.org/projects/psqlodbc/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp9.us.postgresql.org/pub/mirrors/postgresql/odbc/versions/src/

SHARED_ONLY =		Yes

LIB_DEPENDS =		:postgresql-client->=8.3:databases/postgresql \
			:iodbc-*:databases/iodbc

WANTLIB =		pq iodbc iodbcinst pthread 

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.60
CONFIGURE_ARGS+=	--with-iodbc --without-unixodbc --enable-pthreads
COPTS+=			-I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_REGRESS=		Yes

.include <bsd.port.mk>
