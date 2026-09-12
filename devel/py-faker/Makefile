COMMENT =		generate fake data (name, address, job title, email, etc)

MODPY_DISTV =		40.38.0

DISTNAME =		faker-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

# https://github.com/joke2k/faker
HOMEPAGE =		https://faker.readthedocs.io/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# tests need unported ukpostcodeparser (and devel/py-freezegun)
NO_TEST =		Yes

.include <bsd.port.mk>
