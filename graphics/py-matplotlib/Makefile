COMMENT =		Python charting and plotting API

# ../src/_backend_agg_wrapper.cpp:253:17: error: non-constant-expression cannot be narrowed from type 'unsigned int' to 'long' in initializer list [-Wc++11-narrowing]
ONLY_FOR_ARCHS =	${LP64_ARCHS}

MODPY_DISTV =		3.10.7
DISTNAME =		matplotlib-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		graphics devel math

HOMEPAGE =		https://matplotlib.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} freetype m png qhull_r z

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		mesonpy

MODPY_TEST_LINK_SO =	Yes
MODPY_TEST_LINK_SRC =	${WRKSRC}/lib

MODPY_TEST_DIR =	${WRKINST}${MODPY_SITEPKG}

BUILD_DEPENDS =	devel/py-certifi>=2020.06.20 \
		devel/py-pybind11>=2.13.2 \
		devel/py-setuptools_scm \
		math/qhull \
		textproc/py-sphinx

RUN_DEPENDS=	devel/py-tz \
		devel/py-dateutil>=2.7 \
		devel/py-kiwisolver>=1.3.1 \
		devel/py-parsing>=2.3.1 \
		devel/py-gobject3 \
		math/py-contourpy>=1.0.1 \
		math/py-numpy>=1.23 \
		graphics/py-Pillow>=8.0.0 \
		graphics/py-cairo \
		graphics/py-cycler>=0.10 \
		print/py-fonttools>=4.22.0 \
		sysutils/py-packaging>=20.0 \
		${MODPY_TKINTER_DEPENDS}

TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

LIB_DEPENDS =	graphics/png \
		math/qhull

MAKE_ENV+=	LDSHARED="${CC} -shared -fPIC"

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}matplotlib

pre-configure:
	find ${WRKSRC}/galleries/examples -name \*.py -exec ${MODPY_BIN_ADJ} {} +

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/galleries/examples && pax -rw * ${EXAMPLESDIR}

.include <bsd.port.mk>
