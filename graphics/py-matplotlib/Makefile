# $OpenBSD: Makefile,v 1.87 2021/11/02 00:01:16 sthen Exp $

COMMENT=	Python charting and plotting API

MODPY_EGG_VERSION =	3.1.3
DISTNAME =		matplotlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		graphics devel math

HOMEPAGE =		https://matplotlib.org/

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} freetype m png z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/python

FLAVORS=	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

COMMON_DEPENDS=	devel/py-tz${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-kiwisolver${MODPY_FLAVOR} \
		devel/py-parsing${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		graphics/py-cycler${MODPY_FLAVOR} \
		${MODPY_TKINTER_DEPENDS}

BUILD_DEPENDS=	${COMMON_DEPENDS} \
		textproc/py-sphinx${MODPY_FLAVOR}
RUN_DEPENDS=	${COMMON_DEPENDS}
LIB_DEPENDS=	graphics/png
TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR}


COMMON_DEPENDS +=	graphics/py-cairo${MODPY_FLAVOR} \
			devel/py-gobject3${MODPY_FLAVOR}
# pygobject GTK3 introspection (not provided by indirect dependencies)
COMMON_DEPENDS +=	x11/gtk+3

MAKE_ENV+=	LDSHARED="${CC} -shared -fPIC"

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}matplotlib

post-patch:
	cp ${WRKSRC}/setup.cfg{.template,}

pre-configure:
	@find ${WRKSRC}/examples -name \*.py -exec ${MODPY_BIN_ADJ} {} +
	${SUBST_CMD} ${WRKSRC}/setupext.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/examples && pax -rw * ${EXAMPLESDIR}

	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_SITEPKG}/matplotlib/backends/web_backend/jquery-ui-1.12.1
	cp -r ${WRKSRC}/lib/matplotlib/backends/web_backend/jquery-ui-1.12.1/* \
		${WRKINST}${MODPY_SITEPKG}/matplotlib/backends/web_backend/jquery-ui-1.12.1

do-test: fake
	cd ${WRKSRC} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} tests.py --no-network --verbose

.include <bsd.port.mk>
