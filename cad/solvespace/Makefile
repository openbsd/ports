COMMENT =	parametric 2D/3D CAD program
V =		3.1
DISTNAME =	solvespace-${V}
CATEGORIES =	cad
REVISION =	0

SHARED_LIBS +=	slvs	0.0

HOMEPAGE =	https://solvespace.com/

MAINTAINER =	Johannes Thyssen Tishman <ports@thyssentishman.com>

SITES =	https://github.com/solvespace/solvespace/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

# GPLv3+
PERMIT_PACKAGE = Yes

COMPILER =	base-clang

WANTLIB += ${COMPILER_LIBCXX} GL GLU X11 atk-1.0 atkmm-1.6 c cairo
WANTLIB += cairo-gobject cairomm-1.0 execinfo fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0 harfbuzz intl
WANTLIB += json-c m pango-1.0 pangocairo-1.0 pangomm-1.4 png sigc-2.0
WANTLIB += z

BUILD_DEPENDS = devel/gettext,-runtime \
		math/eigen3

LIB_DEPENDS =	devel/json-c \
		x11/gtk3mm

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		math/eigen3 \
		x11/gtk+4,-guic

MODULES =	devel/cmake

CONFIGURE_ARGS+= -DENABLE_GUI=ON \
		 -DENABLE_CLI=ON \
		 -DFORCE_VENDORED_Eigen3=OFF \
		 -DENABLE_LTO=OFF \
		 -DENABLE_COVERAGE=OFF \
		 -DENABLE_TESTS=OFF \
		 -DENABLE_OPENMP=OFF \
		 -DENABLE_SANITIZERS=OFF \
		 -DMI_SECURE=ON \
		 -DMI_LIBATOMIC=OFF \
		 -DMI_BUILD_TESTS=OFF \
		 -DMI_OVERRIDE=OFF \
		 -DMI_BUILD_SHARED=OFF \
		 -DMI_BUILD_OBJECT=OFF

# testsuite broken as is
NO_TEST =	YES

# add FindCairo.cmake
post-extract:
	cp ${FILESDIR}/FindCairo.cmake ${WRKSRC}/cmake/

.include <bsd.port.mk>
