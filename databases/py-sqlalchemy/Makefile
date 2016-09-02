# $OpenBSD: Makefile,v 1.31 2016/09/02 09:57:44 edd Exp $

COMMENT =		database toolkit for Python

MODPY_EGG_VERSION =	1.0.14
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

MAKE_ENV +=		PYTHONPATH=.

RUN_DEPENDS +=		devel/py-apipkg

# Other DB connectors would work, too.
TEST_DEPENDS =		${RUN_DEPENDS} \
			databases/py-sqlite2>=2.8.3 \
			devel/py-test-xdist \
			devel/py-mock

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
