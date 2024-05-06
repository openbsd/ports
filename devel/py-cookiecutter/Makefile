COMMENT =		utility to create projects from templates

MODPY_EGG_VERSION =	2.6.0
DISTNAME =		cookiecutter-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-arrow${MODPY_FLAVOR} \
			devel/py-binaryornot${MODPY_FLAVOR}>=0.4.4 \
			devel/py-click${MODPY_FLAVOR}>=7.0,<9.0.0 \
			devel/py-python-slugify${MODPY_FLAVOR}>=4.0.0 \
			devel/py-rich${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}>=5.3.1 \
			www/py-jinja2${MODPY_FLAVOR}>=2.7,<4.0.0 \
			www/py-jinja2-time${MODPY_FLAVOR}>=0.2.0 \
			www/py-requests${MODPY_FLAVOR}>=2.23.0

TEST_DEPENDS =		devel/git \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-freezegun${MODPY_FLAVOR}

PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
