COMMENT=	database migration tool for sqlalchemy

# docs/build/changelog.rst keeps ending up 0600 in distfiles
FIX_EXTRACT_PERMISSIONS= Yes

MODPY_DISTV=	1.18.4
DISTNAME=	alembic-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	databases

# https://github.com/sqlalchemy/alembic
HOMEPAGE=	https://alembic.sqlalchemy.org

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	databases/py-sqlalchemy \
		devel/py-typing-extensions \
		www/py-mako
TEST_DEPENDS=	textproc/py-black

.include <bsd.port.mk>
