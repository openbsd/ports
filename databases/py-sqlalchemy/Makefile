COMMENT=	database toolkit for Python

MODPY_DISTV=	2.0.55
# 2.1 may break compat in some places; check dependent ports if updating
# https://docs.sqlalchemy.org/en/21/changelog/migration_21.html
PORTROACH=	limit:^2\.0
DISTNAME=	sqlalchemy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# doc/build/changelog
FIX_EXTRACT_PERMISSIONS= Yes

CATEGORIES=	databases

HOMEPAGE=	https://www.sqlalchemy.org/

# MIT
PERMIT_PACKAGE= Yes

WANTLIB=  pthread

WANTLIB-main=  pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MAKE_ENV +=	PYTHONPATH=.
MODPY_PYTEST=	Yes

BUILD_DEPENDS =	lang/cython

RUN_DEPENDS=	devel/py-greenlet \
		devel/py-typing-extensions

TEST_DEPENDS=	devel/py-test-xdist \
		devel/py-mock \
		devel/py-mypy

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

.include <bsd.port.mk>
