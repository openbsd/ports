# $OpenBSD: Makefile,v 1.33 2018/05/26 13:57:05 espie Exp $

COMMENT =		database toolkit for Python

MODPY_EGG_VERSION =	1.2.7
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

.if ${FLAVOR} == ""
# Other DB connectors would work, too.
TEST_DEPENDS =		${RUN_DEPENDS} \
			databases/py-sqlite2${MODPY_FLAVOR}>=2.8.3 \
			devel/py-test-xdist${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
