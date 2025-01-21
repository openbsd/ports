COMMENT=	database migration tool for sqlalchemy

MODPY_DISTV=	1.14.1
DISTNAME=	alembic-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	databases

HOMEPAGE=	https://alembic.sqlalchemy.org

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	databases/py-sqlalchemy \
		devel/py-typing-extensions \
		www/py-mako

.include <bsd.port.mk>
