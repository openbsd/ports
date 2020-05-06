# $OpenBSD: Makefile,v 1.38 2020/05/06 08:12:17 bentley Exp $

COMMENT =		the programmer's solid 3D CAD modeller#'
BROKEN-sparc64=	SIGILL on src/cgalutils.cc with CGAL-4.6.3

V =			2019.05
DISTNAME =		openscad-${V}
REVISION =		5

CATEGORIES =		cad

HOMEPAGE =		https://www.openscad.org/

# GPLv2+ with CGAL exception
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} CGAL GL GLEW GLU Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Multimedia Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets X11 boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c double-conversion
WANTLIB += fontconfig freetype glib-2.0 gmp harfbuzz intl m mpfr
WANTLIB += opencsg qscintilla2_qt5 xml2 z zip

MASTER_SITES =		https://files.openscad.org/
EXTRACT_SUFX =		.src.tar.gz

MODULES =		devel/qmake \
			x11/qt5

BUILD_DEPENDS =		devel/bison \
			devel/gettext,-tools \
			math/eigen3

LIB_DEPENDS =		archivers/libzip \
			devel/boost \
			devel/gmp \
			devel/harfbuzz \
			devel/mpfr \
			editors/qscintilla \
			graphics/glew \
			graphics/opencsg \
			math/cgal \
			math/double-conversion \
			x11/qt5/qtmultimedia

RUN_DEPENDS =		devel/desktop-file-utils \
			fonts/liberation-fonts

# virtual memory exhausted: Cannot allocate memory
.if ${MACHINE_ARCH:Malpha}
COPTS +=		-O1
CXXOPTS +=		-O1
.endif

MODQMAKE_ARGS =		VERSION=${V}
SEPARATE_BUILD =	No

NO_TEST =		Yes

pre-configure:
	ln -sf ${LOCALBASE}/bin/bison ${WRKDIR}/bin/yacc

.include <bsd.port.mk>
