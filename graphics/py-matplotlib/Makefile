COMMENT=	Python charting and plotting API

MODPY_EGG_VERSION =	3.8.3
DISTNAME =		matplotlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		graphics devel math

HOMEPAGE =		https://matplotlib.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} freetype m png qhull_r z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/python

FLAVORS=	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

NO_TEST =		Yes

BUILD_DEPENDS =	devel/py-certifi${MODPY_FLAVOR}>=2020.06.20 \
		devel/py-pybind11${MODPY_FLAVOR}>=2.6 \
		math/qhull \
		math/py-numpy${MODPY_FLAVOR}>=1.25,<2 \
		textproc/py-sphinx${MODPY_FLAVOR}

RUN_DEPENDS=	devel/py-tz${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR}>=2.7 \
		devel/py-kiwisolver${MODPY_FLAVOR}>=1.3.1 \
		devel/py-parsing${MODPY_FLAVOR}>=2.3.1 \
		devel/py-gobject3${MODPY_FLAVOR} \
		math/py-contourpy${MODPY_FLAVOR}>=1.0.1 \
		math/py-numpy${MODPY_FLAVOR}>=1.25,<2 \
		graphics/py-Pillow${MODPY_FLAVOR}>=8.0.0 \
		graphics/py-cairo${MODPY_FLAVOR} \
		graphics/py-cycler${MODPY_FLAVOR}>=0.10 \
		print/py-fonttools${MODPY_FLAVOR}>=4.22.0 \
		sysutils/py-packaging${MODPY_FLAVOR}>=20.0 \
		${MODPY_TKINTER_DEPENDS}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

LIB_DEPENDS =	graphics/png \
		math/qhull

MAKE_ENV+=	LDSHARED="${CC} -shared -fPIC"

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}matplotlib

post-patch:
	cp ${WRKSRC}/mplsetup.cfg{.template,}

pre-configure:
	find ${WRKSRC}/galleries/examples -name \*.py -exec ${MODPY_BIN_ADJ} {} +
	${SUBST_CMD} ${WRKSRC}/setupext.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/galleries/examples && pax -rw * ${EXAMPLESDIR}

.include <bsd.port.mk>
