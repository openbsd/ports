COMMENT =		basic python API for www.metal-archives.com

MODPY_DISTV =	1.1.0
DISTNAME =		python-metallum-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/^python-/py-/}
CATEGORIES =		www
REVISION =		5

HOMEPAGE =		https://github.com/lcharlick/python-metallum
MAINTAINER =		Johan Huldtgren <jhuldtgren@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-dateutil \
			www/py-query \
			www/py-requests \
			www/py-requests-cache

# No upstream tests
NO_TEST =		Yes

.include <bsd.port.mk>
