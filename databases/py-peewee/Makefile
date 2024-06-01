COMMENT=	small expressive ORM

MODPY_EGG_VERSION=	3.17.5
DISTNAME=	peewee-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

GH_ACCOUNT=	coleifer
GH_PROJECT=	peewee
GH_TAGNAME=	${MODPY_EGG_VERSION}

CATEGORIES=	databases

HOMEPAGE=	https://docs.peewee-orm.com/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += sqlite3

BUILD_DEPENDS=	lang/cython${MODPY_FLAVOR}
LIB_DEPENDS=	databases/sqlite3
TEST_DEPENDS=	databases/py-psycopg2${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

MODULES=	databases/postgresql \
		lang/python

MODPY_PYBUILD=	setuptools

# required to run tests with postgresql support
MODPOSTGRESQL_TEST_DBNAME=	peewee_test
MODPOSTGRESQL_TEST_CMD=		cd ${WRKSRC} && ${MODPY_BIN} runtests.py

MAKE_ENV=	PYTHONPATH=${WRKSRC} \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	cp -r ${WRKSRC}/examples ${PREFIX}/share/examples/py-peewee
	mv ${PREFIX}/bin/pwiz.py ${PREFIX}/bin/pwiz

.include <bsd.port.mk>
