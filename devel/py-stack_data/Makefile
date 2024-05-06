COMMENT =	extract data from Python stack frames and tracebacks

MODPY_EGG_VERSION =	0.6.3

DISTNAME =	stack_data-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/alexmojaki/stack_data

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-asttokens${MODPY_FLAVOR} \
		devel/py-executing${MODPY_FLAVOR} \
		devel/py-pure_eval${MODPY_FLAVOR}

PORTHOME =	${WRKDIR}
TEST_DEPENDS =	textproc/py-pygments${MODPY_FLAVOR} \
		devel/py-littleutils${MODPY_FLAVOR} \
		devel/py-typeguard${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

.include <bsd.port.mk>
