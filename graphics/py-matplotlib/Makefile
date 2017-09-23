# $OpenBSD: Makefile,v 1.67 2017/09/23 10:27:35 nigel Exp $

COMMENT=	Python charting and plotting API

MODPY_EGG_VERSION =	1.5.3
DISTNAME =		matplotlib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		6
CATEGORIES =		graphics devel math

HOMEPAGE=	http://matplotlib.sourceforge.net/

MAINTAINER =	Daniel Dickman <daniel@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} ${COMPILER_LIBCXX}
WANTLIB += freetype m png z

MODULES=	lang/python

FLAVORS=	python3
FLAVOR?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

COMMON_DEPENDS=	devel/py-tz${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-parsing${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		graphics/py-cycler${MODPY_FLAVOR} \
		${MODPY_TKINTER_DEPENDS}

BUILD_DEPENDS=	${COMMON_DEPENDS}
RUN_DEPENDS=	${COMMON_DEPENDS}
LIB_DEPENDS=	graphics/png

.if ${FLAVOR:Mpython3}
COMMON_DEPENDS +=	devel/py-cairocffi${MODPY_FLAVOR} \
			devel/py-gobject3${MODPY_FLAVOR}
# pygobject GTK3 introspection (not provided by indirect dependencies)
COMMON_DEPENDS +=	x11/gtk+3
.else
WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat ffi
WANTLIB += fontconfig gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 pthread-stubs xcb xcb-render xcb-shm
COMMON_DEPENDS +=	x11/py-gtk2
LIB_DEPENDS +=	x11/gtk+2
.endif

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-nose${MODPY_FLAVOR}

MAKE_ENV+=	LDSHARED="${CC} -shared -fPIC"

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}matplotlib

pre-configure:
	@find ${WRKSRC}/examples -name \*.py | xargs ${MODPY_BIN_ADJ}
	${SUBST_CMD} ${WRKSRC}/setupext.py
	${SUBST_CMD} ${WRKSRC}/lib/matplotlib/sphinxext/tests/test_tinypages.py

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/examples && pax -rw * ${EXAMPLESDIR}

# http://matplotlib.org/devel/testing.html
do-test: fake
	cd ${WRKSRC} && ${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} -c 'import matplotlib ; matplotlib.test()'

.include <bsd.port.mk>
