# $OpenBSD: Makefile,v 1.81 2020/03/20 16:44:24 naddy Exp $

COMMENT=	Python charting and plotting API

MODPY_EGG_VERSION =	2.2.4
DISTNAME =		matplotlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		graphics devel math

HOMEPAGE =	https://matplotlib.org/

# BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} ${COMPILER_LIBCXX}
WANTLIB += freetype m png z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/python

FLAVORS=	python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

COMMON_DEPENDS=	devel/py-tz${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-kiwisolver${MODPY_FLAVOR} \
		devel/py-parsing${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		graphics/py-cycler${MODPY_FLAVOR} \
		${MODPY_TKINTER_DEPENDS}

BUILD_DEPENDS=	${COMMON_DEPENDS} \
		textproc/py-sphinx${MODPY_FLAVOR}
RUN_DEPENDS=	${COMMON_DEPENDS}
LIB_DEPENDS=	graphics/png
TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR}


.if ${FLAVOR:Mpython3}
COMMON_DEPENDS +=	devel/py-cairocffi${MODPY_FLAVOR} \
			devel/py-gobject3${MODPY_FLAVOR}
# pygobject GTK3 introspection (not provided by indirect dependencies)
COMMON_DEPENDS +=	x11/gtk+3
.else
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat ffi
WANTLIB += fontconfig fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 xcb xcb-render xcb-shm
COMMON_DEPENDS +=	x11/py-gtk2 \
			devel/py-backports-functools-lru-cache \
			devel/py-functools32 \
			devel/py-subprocess32
LIB_DEPENDS +=		x11/gtk+2
TEST_DEPENDS +=		devel/py-mock${MODPY_FLAVOR}
.endif

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
