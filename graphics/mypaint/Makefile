COMMENT =	raster graphics editor for digital painters

MODPY_DISTV =	2.0.1
DISTNAME =	mypaint-${MODPY_DISTV}
EXTRACT_SUFX =	.tar.xz
REVISION =	12

CATEGORIES =	graphics

HOMEPAGE =	https://mypaint.org

MAINTAINER =	Pamela Mosiejczuk <pamela@openbsd.org>

# GPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 cairo cairo-gobject gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz
WANTLIB += intl json-c lcms2 m mypaint pango-1.0 pangocairo-1.0
WANTLIB += png

SITES =			https://github.com/mypaint/mypaint/releases/download/v${MODPY_DISTV}/

MODULES =		lang/python
SEPARATE_BUILD =	Yes
COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/py-gobject3 \
			devel/swig \
			graphics/mypaint-brushes2 \
			graphics/py-cairo \
			math/py-numpy \
			x11/gnome/librsvg

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-gobject3 \
			graphics/mypaint-brushes2 \
			graphics/py-cairo \
			math/py-numpy \
			x11/gtk+4,-guic

LIB_DEPENDS =		devel/harfbuzz \
			devel/json-c \
			devel/pango \
			graphics/lcms2 \
			graphics/libmypaint \
			x11/gtk+3

NO_TEST =		Yes

PORTHOME =		${WRKSRC}

do-build:
	cd ${WRKSRC}; \
		${MODPY_BIN} ./setup.py build --build-base=${WRKBUILD}

do-install:
	cd ${WRKSRC}; \
		${MODPY_BIN} ./setup.py build --build-base=${WRKBUILD} \
		install --prefix=${TRUEPREFIX} --root=${WRKINST} \
		--single-version-externally-managed

.include <bsd.port.mk>
