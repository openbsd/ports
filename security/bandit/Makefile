COMMENT =	find common security issues in Python code

MODPY_DISTV =	1.9.4
DISTNAME =	bandit-${MODPY_DISTV}

CATEGORIES =	security devel

HOMEPAGE =	https://bandit.readthedocs.io/

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	pbr
MODPY_PI =	Yes

RUN_DEPENDS =	textproc/py-yaml \
		devel/py-stevedore \
		devel/py-rich

# 1 test failing, missing https://github.com/microsoft/sarif-python-om
TEST_DEPENDS =	devel/py-testtools \
		devel/py-fixtures \
		devel/py-gitpython \
		www/py-beautifulsoup4

.include <bsd.port.mk>
