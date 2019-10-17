# $OpenBSD: Makefile,v 1.30 2019/10/17 20:04:04 rsadowski Exp $

COMMENT =		the programmer's solid 3D CAD modeller#'
BROKEN-sparc64=	SIGILL on src/cgalutils.cc with CGAL-4.6.3

V =			2019.05
DISTNAME =		openscad-${V}

CATEGORIES =		cad

HOMEPAGE =		http://www.openscad.org/

# GPLv2+ with CGAL exception
PERMIT_PACKAGE =	Yes

WANTLIB += CGAL GL GLEW GLU ICE SM X11 Xext Xi Xinerama Xrender
WANTLIB += boost_filesystem-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c double-conversion fontconfig
WANTLIB += freetype glib-2.0 gmp harfbuzz iconv intl m mpfr opencsg pthread
WANTLIB += qscintilla2_qt4 ${COMPILER_LIBCXX} z lib/qt4/QtGui lib/qt4/QtOpenGL

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://files.openscad.org/
DISTFILES =		${DISTNAME}.src.tar.gz

MODULES =		devel/qmake \
			x11/qt4
BUILD_DEPENDS =		devel/bison \
			math/double-conversion \
			devel/gettext,-tools \
			math/eigen3
LIB_DEPENDS =		devel/boost \
			math/double-conversion \
			devel/gmp \
			devel/harfbuzz \
			devel/mpfr \
			editors/qscintilla \
			graphics/glew \
			graphics/opencsg \
			math/cgal

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

WRKDIST =		${WRKDIR}/openscad-$V

pre-configure:
	ln -sf ${LOCALBASE}/bin/bison ${WRKDIR}/bin/yacc

.include <bsd.port.mk>
