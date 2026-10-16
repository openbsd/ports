COMMENT=	search, filter and sort icalendar data

MODPY_DISTV=	1.2.0
DISTNAME=	icalendar_searcher-${MODPY_DISTV}
PKGNAME=	py-icalendar-searcher-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/python-caldav/icalendar-searcher

# GPLv3+ or Apache-2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/py-setuptools_scm
RUN_DEPENDS=	devel/py-icalendar \
		productivity/py-recurring-ical-events

.include <bsd.port.mk>
