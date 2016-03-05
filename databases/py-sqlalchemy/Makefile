# $OpenBSD: Makefile,v 1.30 2016/03/05 22:46:59 kirby Exp $

COMMENT =		database toolkit for Python

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME =		py-sqlalchemy-${MODPY_EGG_VERSION:S/p/./}
REVISION =		5

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

# Other DB connectors would work, too.
TEST_DEPENDS =		databases/py-sqlite2 \
			devel/py-nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
