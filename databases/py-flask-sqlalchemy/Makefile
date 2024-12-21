COMMENT=	sqlalchemy support for flask

MODPY_DISTV=	3.1.1
DISTNAME=	flask_sqlalchemy-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/}
REVISION=	0

CATEGORIES=	databases www

HOMEPAGE=	https://flask-sqlalchemy.palletsprojects.com/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	databases/py-sqlalchemy \
		www/py-flask

.include <bsd.port.mk>
