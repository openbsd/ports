# $OpenBSD: Makefile,v 1.25 2021/12/07 19:13:45 solene Exp $

COMMENT=		small expressive ORM

MODPY_EGG_VERSION=	3.14.8
DISTNAME=		peewee-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

GH_ACCOUNT=		coleifer
GH_PROJECT=		peewee
GH_TAGNAME=		${MODPY_EGG_VERSION}

CATEGORIES=		databases

HOMEPAGE=		https://docs.peewee-orm.com/

# MIT
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=		textproc/py-sphinx,python3>=4.0.2

TEST_DEPENDS=		databases/py-psycopg2${MODPY_FLAVOR} \
			databases/sqlite3

FLAVORS=		python3
FLAVOR=			python3

MODULES=		databases/postgresql \
			lang/python

MODPY_SETUPTOOLS=	Yes

# required to run tests with postgresql support
MODPOSTGRESQL_TEST_DBNAME=	peewee_test
MODPOSTGRESQL_TEST_CMD=		cd ${WRKSRC} && ${MODPY_BIN} runtests.py

MAKE_ENV +=	PYTHONPATH=${WRKSRC}
DOCSRC =	${WRKSRC}/docs
post-build:
	cd ${DOCSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} html

DOCS =		${PREFIX}/share/doc/${MODPY_PY_PREFIX}peewee
EXAMPLES =	${PREFIX}/share/examples/${MODPY_PY_PREFIX}peewee
post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}
	${INSTALL_DATA_DIR} ${EXAMPLES}
	cd ${WRKSRC}/examples && pax -rw * ${EXAMPLES}
	mv ${PREFIX}/bin/pwiz.py ${PREFIX}/bin/pwiz


.include <bsd.port.mk>
