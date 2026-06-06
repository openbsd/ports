COMMENT =		parametric 2D/3D CAD program

V =			3.2
DISTNAME =		solvespace-${V}

SHARED_LIBS +=		slvs	1.0

CATEGORIES =		cad
HOMEPAGE =		https://solvespace.com/
MAINTAINER =		Johannes Thyssen Tishman <jtt@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU X11 atk-1.0 atkmm-1.6 c cairo
WANTLIB += cairo-gobject cairomm-1.0 execinfo fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0 harfbuzz intl
WANTLIB += json-c m pango-1.0 pangocairo-1.0 pangomm-1.4 png sigc-2.0
WANTLIB += z

SITES =			https://github.com/solvespace/solvespace/releases/download/v${V}/
EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gettext,-runtime \
			math/eigen3

LIB_DEPENDS =		devel/json-c \
			graphics/cairo \
			graphics/png \
			x11/gtk3mm

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			math/eigen3 \
			x11/gtk+4,-guic

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

CONFIGURE_ARGS+=	-DENABLE_GUI=ON \
			-DENABLE_CLI=ON \
			-DFORCE_VENDORED_Eigen3=OFF \
			-DENABLE_LTO=OFF \
			-DENABLE_COVERAGE=OFF \
			-DENABLE_TESTS=ON \
			-DENABLE_OPENMP=OFF \
			-DENABLE_SANITIZERS=OFF

do-test:
	cd ${WRKSRC} && ${WRKBUILD}/bin/solvespace-testsuite

.include <bsd.port.mk>
