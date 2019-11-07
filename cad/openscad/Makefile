# $OpenBSD: Makefile,v 1.32 2019/11/07 09:07:13 bentley Exp $

COMMENT =		the programmer's solid 3D CAD modeller#'
BROKEN-sparc64=	SIGILL on src/cgalutils.cc with CGAL-4.6.3

V =			2019.05
DISTNAME =		openscad-${V}
REVISION =		0

CATEGORIES =		cad

HOMEPAGE =		https://www.openscad.org/

# GPLv2+ with CGAL exception
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} CGAL GL GLEW GLU ICE lib/qt4/QtGui lib/qt4/QtMultimedia
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL SM X11 Xext Xi Xinerama Xrender
WANTLIB += boost_filesystem-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c double-conversion
WANTLIB += fontconfig freetype glib-2.0 gmp harfbuzz intl m mpfr
WANTLIB += opencsg qscintilla2_qt4 xml2 z

# C++11
COMPILER =		base-clang ports-gcc

MASTER_SITES =		https://files.openscad.org/
DISTFILES =		${DISTNAME}.src.tar.gz

MODULES =		devel/qmake \
			x11/qt4
BUILD_DEPENDS =		devel/bison \
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
