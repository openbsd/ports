# $OpenBSD: Makefile,v 1.44 2020/07/03 21:12:37 sthen Exp $

COMMENT-main =		database toolkit for Python
COMMENT-docs =		documentation and examples for sqlalchemy

MODPY_EGG_VERSION =	1.2.19
DISTNAME =		SQLAlchemy-${MODPY_EGG_VERSION}
FULLPKGNAME-main =	${MODPY_PY_PREFIX}sqlalchemy-${MODPY_EGG_VERSION}
FULLPKGPATH-main =	databases/py-sqlalchemy${MODPY_FLAVOR},-main
FULLPKGNAME-docs =	py-sqlalchemy-docs-${MODPY_EGG_VERSION}
FULLPKGPATH-docs =	databases/py-sqlalchemy,-docs
REVISION-main =		0

CATEGORIES =		databases

HOMEPAGE =		https://www.sqlalchemy.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB-main +=		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

SUBST_VARS+=		MODPY_FLAVOR

RUN_DEPENDS +=		databases/py-sqlalchemy,-docs
RUN_DEPENDS-docs =	#empty

MULTI_PACKAGES =	-main -docs
FLAVORS =		python3
FLAVOR ?=

MAKE_ENV +=		PYTHONPATH=.
MODPY_PYTEST =		Yes

# Other DB connectors would work, too.
TEST_DEPENDS =		devel/py-test-xdist${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}
# On python3, sqlite3 is used.
.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		databases/py-sqlite2${MODPY_FLAVOR}>=2.8.3
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

.include <bsd.port.mk>
