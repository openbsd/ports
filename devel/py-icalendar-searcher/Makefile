COMMENT=	search, filter and sort icalendar data

MODPY_DISTV=	1.0.3
DISTNAME=	icalendar_searcher-${MODPY_DISTV}
PKGNAME=	py-icalendar-searcher-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/python-caldav/icalendar-searcher

# AGPL v3.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-dynamic-versioning
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-icalendar \
		productivity/py-recurring-ical-events

# no tests in pypi sdist, and poetry-dynamic-versioning does not work
# with a git-archive download.
NO_TEST=	Yes

pre-configure:
	sed -i 's,^version = "0.0.0".*,version = "${MODPY_DISTV}",' \
		${WRKSRC}/pyproject.toml

.include <bsd.port.mk>
