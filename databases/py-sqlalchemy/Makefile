# $OpenBSD: Makefile,v 1.48 2021/11/02 00:00:16 sthen Exp $

COMMENT =		database toolkit for Python

MODPY_EGG_VERSION =	1.4.26
DISTNAME =		SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME =		py-sqlalchemy-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		databases

HOMEPAGE =		https://www.sqlalchemy.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB-main +=		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

SUBST_VARS+=		MODPY_FLAVOR

FLAVORS =		python3
FLAVOR =		python3

MAKE_ENV +=		PYTHONPATH=.
MODPY_PYTEST =		Yes

# Other DB connectors would work, too.
TEST_DEPENDS =		devel/py-test-xdist${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

.include <bsd.port.mk>
