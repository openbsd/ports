COMMENT =		iterative JSON parser

MODPY_EGG_VERSION =	3.1.4
DISTNAME =		ijson-${MODPY_EGG_VERSION}
PKGNAME =		py-ijson-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/ICRAR/ijson

MAINTAINER =		Renaud Allard <renaud@allard.it>

# BSD License
PERMIT_PACKAGE =	Yes

WANTLIB += pthread yajl

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
FLAVORS =		python3
FLAVOR =		python3

MAKE_ENV =		LDFLAGS=-L${LOCALBASE}/lib \
			CPPFLAGS=-I${LOCALBASE}/include
LIB_DEPENDS =		devel/libyajl

.include <bsd.port.mk>
