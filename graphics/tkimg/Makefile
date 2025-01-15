COMMENT =		image extension for Tcl/Tk

V =			2.0.1

DISTNAME =		Img-${V}
PKGNAME =		tkimg-${V}
CATEGORIES =		graphics
HOMEPAGE = 		https://tkimg.sourceforge.net/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes
WANTLIB =		X11 Xext Xft Xss fontconfig freetype m z
SITES =			${SITE_SOURCEFORGE:=tkimg/}
FIX_CRLF_FILES =	${EXA_SRCS}
MODULES =		x11/tk
MODTK_VERSION =		8.6

BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS} \
			devel/tcllib

RUN_DEPENDS =		${MODTK_RUN_DEPENDS}

FAKE_FLAGS =		INSTALL_ROOT=${DESTDIR} \
			LIB_RUNTIME_DIR=${MODTCL_TCLDIR}/tkimg

#TEST_FLAGS =		libdir=${WRKBUILD}
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--libdir=${MODTCL_TCLDIR}/tkimg \
			--includedir=${PREFIX}/include/tkimg \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-x

TEST_IS_INTERACTIVE =	X11
WRKDIST =		${WRKDIR}/Img-${V}
INSTALL_TARGET =	install-libraries install-man
TEST_TARGET =		test
SUBST_VARS =		IMG_VER JPG_VER PNG_VER TIFF_VER ZLIB_VER

IMG_VER =		${V:S/.//g}
JPG_VER =		960
PNG_VER =		1644
TIFF_VER =		470
ZLIB_VER =		131

EXA_SRC_DIR =		${WRKSRC}/tests/demo
EXA_DEST_DIR =		${PREFIX}/share/examples/tkimg
EXA_SRCS =		${EXA_SRC_DIR}/{demo,tkv}.tcl

# Tests are broken
NO_TEST =		Yes

pre-configure:
	@${MODTCL_WISH_ADJ} ${EXA_SRCS}

post-install:
	${INSTALL_DATA_DIR} ${EXA_DEST_DIR} ${EXA_DEST_DIR}/msgs
	${INSTALL_SCRIPT} ${EXA_SRCS} ${EXA_DEST_DIR}
	${INSTALL_DATA} ${EXA_SRC_DIR}/msgs/* ${EXA_DEST_DIR}/msgs/

.include <bsd.port.mk>
