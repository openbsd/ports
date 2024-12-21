COMMENT =		library for property based testing

# newer versions required new dep 'exceptiongroup'
MODPY_DISTV =	6.47.1
DISTNAME =		hypothesis-${MODPY_DISTV}
PKGNAME =		py-hypothesis-${MODPY_DISTV}
CATEGORIES =		devel
REVISION =		2

HOMEPAGE =		https://hypothesis.works/

# MPL 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-attrs \
			devel/py-coverage \
			devel/py-sortedcontainers

# Primary author is completely uninterested in supplying tests via PyPI
NO_TEST =		Yes

.include <bsd.port.mk>
