COMMENT=	database migration tool for sqlalchemy

MODPY_DISTV=	1.14.0
#FIX_EXTRACT_PERMISSIONS= Yes

DISTNAME=	alembic-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	databases

HOMEPAGE=	https://alembic.sqlalchemy.org

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	databases/py-sqlalchemy \
		devel/py-typing-extensions \
		www/py-mako

.include <bsd.port.mk>
