COMMENT=	C++ client API for PostgreSQL

GH_ACCOUNT=	jtv
GH_PROJECT=	libpqxx
GH_TAGNAME=	6.4.7

CATEGORIES=	databases devel

SHARED_LIBS =	pqxx                 3.0      # .0.0

HOMEPAGE=	http://pqxx.org/development/libpqxx/

# 3-clause BSDL
PERMIT_PACKAGE=	Yes

WANTLIB += crypto m pq ssl ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc

LIB_DEPENDS=	databases/postgresql

MODULES=	databases/postgresql \
		lang/python
MODPY_RUNDEP=	No
MODPY_ADJ_FILES=tools/splitconfig \
		tools/template2mak.py

# "Yes" breaks tests
SEPARATE_BUILD=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-documentation
USE_GMAKE=	Yes
BUILD_DEPENDS=	textproc/xmlto

MODPOSTGRESQL_TEST_DBNAME=	pqxx-test

.include <bsd.port.mk>
