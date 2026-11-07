COMMENT =	more modern man page viewer for our terminals

GH_ACCOUNT =	plp13
GH_PROJECT =	qman
GH_TAGNAME =	v1.5.1

CATEGORIES =	misc textproc

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c curses lzma z

MODULES =	devel/meson

BUILD_DEPENDS =	devel/cunit \
		devel/py-cogapp
LIB_DEPENDS =	archivers/xz
RUN_DEPENDS =	devel/xdg-utils \
		textproc/groff

# hits poisoned bin/cmake if no bzip2.pc is available
CONFIGURE_ARGS =	-Dbzip2=disabled

DEBUG_PACKAGES = ${BUILD_PACKAGES}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/config_def.py

.include <bsd.port.mk>
