# $OpenBSD: Makefile,v 1.35 2018/06/19 13:59:24 rpointel Exp $

COMMENT =		database toolkit for Python

MODPY_EGG_VERSION =	1.2.8
DISTNAME =		SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME =		py-sqlalchemy-${MODPY_EGG_VERSION:S/p/./}

CATEGORIES =		databases

HOMEPAGE =		http://www.sqlalchemy.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += pthread

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI = 		Yes

FLAVORS =		python3
FLAVOR ?=

MAKE_ENV +=		PYTHONPATH=.

# Other DB connectors would work, too.
TEST_DEPENDS =		devel/py-test-xdist${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}
# On python3, sqlite3 is used.
.if ${FLAVOR} == ""
TEST_DEPENDS +=		databases/py-sqlite2${MODPY_FLAVOR}>=2.8.3
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

.include <bsd.port.mk>
