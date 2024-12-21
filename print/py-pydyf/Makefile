COMMENT =		low-level PDF generator

MODPY_DISTV =	0.11.0
DISTNAME =		pydyf-${MODPY_DISTV}
PKGNAME =		py-pydyf-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		print

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		flit_core
MODPY_PI =		Yes
#MODPY_TEST_DIR=		${WRKSRC}/tests

TEST_DEPENDS +=		devel/py-test-xdist \
			graphics/py-Pillow

.include <bsd.port.mk>
