COMMENT =		Radix tree implementation for Python

MODPY_DISTV =		1.0.2
GH_ACCOUNT =		SEKOIA-IO
GH_PROJECT =		py-radix
GH_TAGNAME =		v${MODPY_DISTV}

CATEGORIES=		devel net

# fork from https://github.com/mjschultz/py-radix/
HOMEPAGE =		https://github.com/SEKOIA-IO/py-radix/

MAINTAINER =		Job Snijders <job@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

TEST_DEPENDS =		devel/py-coverage

.include <bsd.port.mk>
