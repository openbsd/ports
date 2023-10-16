COMMENT-main =	Tcl/Tk snack sound toolkit

MODPY_EGG_VERSION =	2.2.10
DISTNAME =	snack${MODPY_EGG_VERSION}
PKGNAME-main =  snack-${MODPY_EGG_VERSION}
CATEGORIES =	audio

REVISION-main = 7

HOMEPAGE =	https://www.speech.kth.se/snack/
SITES =		${HOMEPAGE}/dist/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD/GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB-main +=	c sndio ossaudio ogg vorbis vorbisenc
WANTLIB-main +=	X11 Xext Xft Xss m fontconfig

LIB_DEPENDS-main =	audio/libvorbis

MULTI_PACKAGES =	-main

MODULES =		x11/tk

BUILD_DEPENDS =		${MODTK_BUILD_DEPENDS}
RUN_DEPENDS-main =	${MODTK_RUN_DEPENDS}

SEPARATE_BUILD =	Yes
CONFIGURE_SCRIPT =	unix/configure
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR} \
			--with-ogg-include=${LOCALBASE}/include \
			--with-ogg-lib=${LOCALBASE}/lib
MAKE_FLAGS +=		SNACK_INSTALL_PATH=${MODTCL_TCLDIR}

TEST_TARGET =	test

pre-configure:
	cp ${FILESDIR}/jkAudIO_sndio.c ${WRKSRC}/unix/
	${MODTCL_WISH_ADJ} ${WRKSRC}/demos/tcl/compose.tcl \
		${WRKSRC}/demos/tcl/echo.tcl \
		${WRKSRC}/demos/tcl/formant.tcl \
		${WRKSRC}/demos/tcl/fourChan.tcl \
		${WRKSRC}/demos/tcl/mapChan.tcl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snack/tcl
	${INSTALL_DATA} ${WRKSRC}/demos/tcl/*.plg ${PREFIX}/share/examples/snack/tcl/
	${INSTALL_DATA} ${WRKSRC}/demos/tcl/*.scr ${PREFIX}/share/examples/snack/tcl/
	${INSTALL_DATA} ${WRKSRC}/demos/tcl/*.phn ${PREFIX}/share/examples/snack/tcl/
	${INSTALL_DATA} ${WRKSRC}/demos/tcl/*.wav ${PREFIX}/share/examples/snack/tcl/
	${INSTALL_DATA} ${WRKSRC}/demos/tcl/*.txt ${PREFIX}/share/examples/snack/tcl/
	${INSTALL_SCRIPT} ${WRKSRC}/demos/tcl/*.tcl ${PREFIX}/share/examples/snack/tcl/
	rm ${PREFIX}/share/examples/snack/tcl/wrap.tcl \
		${PREFIX}/share/examples/snack/tcl/SphereTest.tcl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snack
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/snack

.include <bsd.port.mk>
