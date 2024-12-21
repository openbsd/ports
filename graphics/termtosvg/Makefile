COMMENT =	record terminal sessions as SVG animations

MODPY_DISTV =	1.1.0
DISTNAME =	termtosvg-${MODPY_DISTV}
REVISION =	7

CATEGORIES =	graphics

HOMEPAGE =	https://nbedos.github.io/termtosvg/

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	termtosvg/tests

RUN_DEPENDS =	devel/py-pyte \
		devel/py-wcwidth \
		textproc/py-lxml

.include <bsd.port.mk>
