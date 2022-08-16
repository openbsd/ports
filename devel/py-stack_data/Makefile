COMMENT =	extract data from Python stack frames and tracebacks

MODPY_EGG_VERSION =	0.4.0

DISTNAME =	stack_data-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/alexmojaki/stack_data

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		devel/py-setuptools_scm${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-asttokens${MODPY_FLAVOR} \
			devel/py-executing${MODPY_FLAVOR} \
			devel/py-pure_eval${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}
TEST_DEPENDS =		textproc/py-pygments${MODPY_FLAVOR} \
			devel/py-littleutils${MODPY_FLAVOR} \
			devel/py-typeguard${MODPY_FLAVOR}

.include <bsd.port.mk>
