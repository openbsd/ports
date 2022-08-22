COMMENT =	SQLite3 adapter for Python

MODPY_EGG_VERSION =	2.8.3

DISTNAME =	pysqlite-${MODPY_EGG_VERSION}
PKGNAME =	py-sqlite2-${MODPY_EGG_VERSION}
CATEGORIES =	databases devel
REVISION =	2

HOMEPAGE =	https://github.com/ghaering/pysqlite/

MODPY_PI =	Yes

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread sqlite3>=8.6

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

do-test: fake
	@cd ${WRKDIR} && \
		${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'from pysqlite2 import test; test.test()'

.include <bsd.port.mk>
