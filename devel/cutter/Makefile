COMMENT =	RE platform powered by rizin

V =		2.4.1
PKGNAME =	cutter-${V}
DISTNAME =	Cutter-v${V}-src
WRKDIST =	${WRKDIR}/Cutter-v${V}

SITES =		https://github.com/rizinorg/cutter/releases/download/v${V}/

CATEGORIES =	devel

HOMEPAGE =	https://cutter.re/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL KF6SyntaxHighlighting Qt6Core
WANTLIB += Qt6Core5Compat Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Svg Qt6SvgWidgets Qt6Widgets c cdt cgraph gvc intl
WANTLIB += m ${MODPY_WANTLIB} rz_arch rz_bin rz_bp rz_config rz_cons
WANTLIB += rz_core rz_crypto rz_debug rz_demangler rz_diff rz_egg
WANTLIB += rz_flag rz_hash rz_il rz_io rz_lang rz_magic rz_reg
WANTLIB += rz_search rz_sign rz_socket rz_syscall rz_type rz_util
WANTLIB += util

MODULES =	devel/cmake \
		lang/python \
		x11/qt6

BUILD_DEPENDS =	${RUN_DEPENDS}
LIB_DEPENDS =	devel/kf6/syntax-highlighting \
		devel/rizin>=0.8.1 \
		math/graphviz \
		x11/qt6/qt5compat \
		x11/qt6/qtsvg

# XXX: Python-based plugins don't work yet, this needs
# CUTTER_ENABLE_PYTHON_BINDINGS which requires (unported) Shiboken2.
CONFIGURE_ARGS =-DCUTTER_ENABLE_GRAPHVIZ=ON \
		-DCUTTER_ENABLE_KSYNTAXHIGHLIGHTING=ON \
		-DCUTTER_ENABLE_PYTHON=ON \
		-DCUTTER_ENABLE_CRASH_REPORTS=OFF \
		-DCUTTER_USE_BUNDLED_RIZIN=OFF

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cutter ${PREFIX}/bin/cutter

.include <bsd.port.mk>
