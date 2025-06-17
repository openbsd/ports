COMMENT =	Python interface to the Graphviz visualization package

MODPY_DISTV =	1.14
DISTNAME =	pygraphviz-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	math
REVISION =	0

HOMEPAGE =	https://pygraphviz.github.io/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += cdt cgraph gvc

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools
MODPY_TEST_LINK_SO =	Yes

LIB_DEPENDS +=	math/graphviz

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
