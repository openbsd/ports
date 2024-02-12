COMMENT =		client library for executing notebooks

MODPY_EGG_VERSION =	0.5.13
DISTNAME =		nbclient-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-traitlets${MODPY_FLAVOR}>=5.0.0 \
			devel/py-jupyter_client${MODPY_FLAVOR}>=6.1.5 \
			devel/py-nbformat${MODPY_FLAVOR}>=5.0 \
			devel/py-nest-asyncio${MODPY_FLAVOR}

TEST_DEPENDS =		textproc/py-xmltodict${MODPY_FLAVOR} \
			devel/py-nbconvert${MODPY_FLAVOR}

.include <bsd.port.mk>
