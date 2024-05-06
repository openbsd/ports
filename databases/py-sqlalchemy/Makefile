COMMENT=	database toolkit for Python

# 2.x is a major update with incompatible changes;
#dependent ports need checking
MODPY_EGG_VERSION=	1.4.51
DISTNAME=	SQLAlchemy-${MODPY_EGG_VERSION}
PKGNAME=	py-sqlalchemy-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	databases

HOMEPAGE=	https://www.sqlalchemy.org/

# MIT
PERMIT_PACKAGE= Yes

WANTLIB=  pthread

WANTLIB-main=  pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

SUBST_VARS +=	MODPY_FLAVOR

FLAVORS=	python3
FLAVOR=		python3

MAKE_ENV +=	PYTHONPATH=.
MODPY_PYTEST=	Yes

RUN_DEPENDS +=	devel/py-greenlet${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-test-xdist${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlalchemy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlalchemy
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-sqlalchemy
	cd ${WRKSRC}/examples && \
		pax -rw * ${PREFIX}/share/examples/py-sqlalchemy

.include <bsd.port.mk>
