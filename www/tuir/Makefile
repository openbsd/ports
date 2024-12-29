COMMENT =		terminal UI for Reddit

MODPY_DISTV =		1.29.0

DISTNAME =		tuir-${MODPY_DISTV}
REVISION =		8

CATEGORIES =		www

HOMEPAGE =		https://gitlab.com/ajak/tuir

MAINTAINER =		Stefan Hagen <sh+ports@codevoid.de>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-decorator \
			devel/py-kitchen \
			devel/py-six \
			www/py-requests>=2.4.0 \
			www/py-beautifulsoup4

TEST_DEPENDS =		devel/py-coverage \
			devel/py-coveralls \
			devel/py-mock \
			devel/pylint \
			www/py-vcrpy

.include <bsd.port.mk>
