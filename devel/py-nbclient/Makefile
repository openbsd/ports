COMMENT =		client library for executing notebooks

MODPY_DISTV =	0.10.0
DISTNAME =		nbclient-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-traitlets>=5.4 \
			devel/py-jupyter_client>=6.1.12 \
			devel/py-jupyter_core>=5.1 \
			devel/py-nbformat>=5.1 \
			devel/py-nest-asyncio

# needs ipywidgets
TEST_DEPENDS =		textproc/py-xmltodict \
			devel/ipython \
			devel/py-flaky \
			devel/py-ipykernel \
			devel/py-nbconvert \
			devel/py-test-asyncio \
			devel/py-test-cov \
			devel/py-testpath

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
