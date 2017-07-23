# $OpenBSD: Makefile,v 1.23 2017/07/23 09:26:26 espie Exp $

COMMENT=	C++ client API for PostgreSQL

DISTNAME=	libpqxx-4.0.1
REVISION =	0
CATEGORIES=	databases devel

SHARED_LIBS =	pqxx                 2.0      # .0.0

HOMEPAGE=	http://pqxx.org/development/libpqxx/

# 3-clause BSDL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto m pq ssl ${COMPILER_LIBCXX}

MASTER_SITES=	http://pqxx.org/download/software/libpqxx/

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
