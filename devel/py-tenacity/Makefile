COMMENT =		Python module to retry code until it succeeds

MODPY_DISTV =		9.1.2
DISTNAME =		tenacity-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

MAINTAINER =		Mikolaj Kucharski <mikolaj@kucharski.name>

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jd/tenacity

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

TEST_DEPENDS =		devel/py-typeguard \
			www/py-tornado

.include <bsd.port.mk>
