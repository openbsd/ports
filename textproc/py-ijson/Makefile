COMMENT =		iterative JSON parser

MODPY_DISTV =	3.3.0
DISTNAME =		ijson-${MODPY_DISTV}
PKGNAME =		py-ijson-${MODPY_DISTV:S/.post/pl/}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/ICRAR/ijson

MAINTAINER =		Renaud Allard <renaud@allard.it>

# BSD License
PERMIT_PACKAGE =	Yes

WANTLIB += pthread yajl

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

MAKE_ENV =		LDFLAGS=-L${LOCALBASE}/lib \
			CPPFLAGS=-I${LOCALBASE}/include
LIB_DEPENDS =		devel/libyajl

.include <bsd.port.mk>
