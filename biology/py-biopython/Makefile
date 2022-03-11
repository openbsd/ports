COMMENT =		Python tools for computational molecular biology

MODPY_EGG_VERSION =	1.79
DISTNAME =		biopython-${MODPY_EGG_VERSION}
CATEGORIES =		biology
PKGNAME =		py-${DISTNAME}
REVISION =		0

HOMEPAGE =		http://www.biopython.org/

MAINTAINER =		Martin Reindl <martin@catai.org>

# BSD-like
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =              Yes
MODPY_SETUPTOOLS =      Yes

FLAVORS =		python3
FLAVOR =		python3

WANTLIB +=	pthread

BUILD_DEPENDS =	devel/swig \
		math/py-numpy${MODPY_FLAVOR}
RUN_DEPENDS =	math/py-numpy${MODPY_FLAVOR} \
		print/py-reportlab${MODPY_FLAVOR}

CFLAGS +=	-fPIC

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-biopython/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-biopython/
	${INSTALL_DATA} ${WRKSRC}/Doc/*.pdf ${PREFIX}/share/doc/py-biopython/
	cd ${WRKSRC}/Doc/examples; tar cf - * | \
		tar xf - -C ${PREFIX}/share/examples/py-biopython

do-test:
	@cd ${WRKSRC}/Tests && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run_tests.py

.include <bsd.port.mk>
