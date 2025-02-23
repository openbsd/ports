COMMENT=	command line tool for PostgreSQL server activity monitoring

# intentionally no py- prefix in PKGNAME
MODPY_DISTV=	3.6.0
DISTNAME=	pg_activity-${MODPY_DISTV}

# https://github.com/dalibo/pg_activity/blob/master/CHANGELOG.md
HOMEPAGE=	https://github.com/dalibo/pg_activity

CATEGORIES=	databases

# PostgreSQL
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# tests require psycopg, not psycopg2
NO_TEST=	Yes

RUN_DEPENDS=	databases/py-psycopg2 \
		devel/py-attrs \
		sysutils/py-blessed \
		sysutils/py-psutil \
		textproc/py-humanize

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/pg_activity.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
