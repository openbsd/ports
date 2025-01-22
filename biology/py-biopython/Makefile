COMMENT =		Python tools for computational molecular biology

MODPY_DISTV =		1.85
DISTNAME =		biopython-${MODPY_DISTV}
CATEGORIES =		biology
PKGNAME =		py-${DISTNAME}

HOMEPAGE =		http://www.biopython.org/

MAINTAINER =		Martin Reindl <martin@catai.org>

# BSD-like
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =              Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =	devel/swig \
		math/py-numpy
RUN_DEPENDS =	math/py-numpy \
		print/py-reportlab

CFLAGS +=	-fPIC

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-biopython/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-biopython/
	cd ${WRKSRC}/Doc/examples; tar cf - * | \
		tar xf - -C ${PREFIX}/share/examples/py-biopython

do-test:
	@cd ${WRKSRC}/Tests && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run_tests.py --offline

.include <bsd.port.mk>
