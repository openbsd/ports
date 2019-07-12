# $OpenBSD: Makefile,v 1.26 2019/07/12 20:43:53 sthen Exp $

COMMENT=	C++ client API for PostgreSQL

DISTNAME=	libpqxx-4.0.1
REVISION =	2
CATEGORIES=	databases devel

SHARED_LIBS =	pqxx                 2.0      # .0.0

HOMEPAGE=	http://pqxx.org/development/libpqxx/

# 3-clause BSDL
PERMIT_PACKAGE=	Yes

WANTLIB += crypto m pq ssl ${COMPILER_LIBCXX}

MASTER_SITES=	http://pqxx.org/download/software/libpqxx/

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	databases/postgresql

MODULES=	databases/postgresql lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=tools/splitconfig \
		tools/template2mak.py

# "Yes" breaks tests
SEPARATE_BUILD=	No

CONFIGURE_STYLE=gnu

MODPOSTGRESQL_TEST_DBNAME =	pqxx-test

.include <bsd.port.mk>
