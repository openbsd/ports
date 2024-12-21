COMMENT=	database toolkit for Python

MODPY_DISTV=	2.0.36
DISTNAME=	sqlalchemy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

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

RUN_DEPENDS +=	devel/py-greenlet \
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
