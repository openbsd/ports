# $OpenBSD: Makefile,v 1.15 2014/04/24 10:18:51 ajacoutot Exp $

COMMENT=	C++ client API for PostgreSQL

DISTNAME=	libpqxx-2.5.3
REVISION=	4
CATEGORIES=	databases
SHARED_LIBS +=	pqxx                 1.0      # .0.0

HOMEPAGE=	http://pqxx.org/development/libpqxx/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto m pq ssl stdc++

MASTER_SITES=	http://pqxx.org/download/software/libpqxx/ \
		ftp://pqxx.org/software/libpqxx/

LIB_DEPENDS=	databases/postgresql


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

# Regression tests connect to real database
NO_TEST=	Yes

.include <bsd.port.mk>
