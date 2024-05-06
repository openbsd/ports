COMMENT =	RE platform powered by rizin

V =		2.3.4
PKGNAME =	cutter-${V}
DISTNAME =	Cutter-v${V}-src
WRKDIST =	${WRKDIR}/Cutter-v${V}
REVISION =	0

SITES =		https://github.com/rizinorg/cutter/releases/download/v${V}/

CATEGORIES =	devel

HOMEPAGE =	https://cutter.re/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5SyntaxHighlighting Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5Svg Qt5Widgets c cdt cgraph gvc m ${MODPY_WANTLIB}
WANTLIB += rz_analysis rz_asm rz_bin rz_bp rz_config rz_cons rz_core
WANTLIB += rz_crypto rz_debug rz_demangler rz_diff rz_egg rz_flag
WANTLIB += rz_hash rz_il rz_io rz_lang rz_magic rz_parse rz_reg
WANTLIB += rz_search rz_sign rz_socket rz_syscall rz_type rz_util

MODULES =	devel/cmake \
		lang/python \
		x11/qt5

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/rizin>=0.4.0
LIB_DEPENDS =	devel/kf5/syntax-highlighting \
		math/graphviz \
		x11/qt5/qtsvg

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
