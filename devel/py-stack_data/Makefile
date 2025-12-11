COMMENT =	extract data from Python stack frames and tracebacks

MODPY_DISTV =	0.6.3

DISTNAME =	stack_data-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	https://github.com/alexmojaki/stack_data

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools_scm

RUN_DEPENDS =	devel/py-asttokens \
		devel/py-executing \
		devel/py-pure_eval

PORTHOME =	${WRKDIR}
TEST_DEPENDS =	textproc/py-pygments \
		devel/py-littleutils \
		devel/py-typeguard \
		lang/cython

.include <bsd.port.mk>
