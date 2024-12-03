COMMENT=	sqlalchemy support for flask

MODPY_EGG_VERSION= 3.1.1
DISTNAME=	flask_sqlalchemy-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:S/_/-/}

CATEGORIES=	databases www

HOMEPAGE=	https://flask-sqlalchemy.palletsprojects.com/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

RUN_DEPENDS=	databases/py-sqlalchemy${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR}

.include <bsd.port.mk>
