COMMENT =	graphic library, pdf parser, viewer and utilities

SHARED_LIBS +=  mupdf                 14.3

V =		1.26.12
DISTNAME =	mupdf-$V-source
PKGNAME =	mupdf-${V:S/-rc/rc/}

CATEGORIES =	textproc x11

HOMEPAGE =	https://mupdf.com/

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# code: Affero v3
# CMap resources (Adobe): BSD
# fonts -
#   Droid: Apache
#   Charis SIL, Noto, Source Han Serif, URW Dingbats/Nimbus: OFL
PERMIT_PACKAGE = Yes

# uses pledge(2)
WANTLIB += GL X11 Xext Xrandr brotlidec brotlienc c crypto freetype
WANTLIB += glut gumbo harfbuzz jbig2dec jpeg m openjp2 pthread z

FLAVORS =	js
FLAVOR ?=

# https://git.ghostscript.com/?p=mupdf.git;a=summary
SITES =		https://mupdf.com/downloads/archive/

# c++ used for tessocr.cpp; standard library not linked
COMPILER =	base-clang ports-gcc

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	archivers/brotli \
		devel/harfbuzz \
		graphics/freeglut \
		graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2 \
		www/gumbo

USE_GMAKE =	Yes
NO_TEST =	Yes

LDFLAGS =	-L${WRKSRC}/build/shared-release \
		-L${LOCALBASE}/lib \
		-L${X11BASE}/lib
#		-lgumbo

CPPFLAGS =	-I$(WRKSRC)/include \
		-I${X11BASE}/include \
		-I${X11BASE}/include/freetype2 \
		-I${LOCALBASE}/include/harfbuzz \
		-I${LOCALBASE}/include/openjpeg-2.5 \
		-I${LOCALBASE}/include
MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" \
		XCFLAGS="${CFLAGS} -fPIC ${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}" LLD_EMUL="${LLD_EMUL}" \
		USE_SYSTEM_LIBS=yes \
		SYS_FREETYPE_LIBS=-lfreetype \
		HAVE_LEPTONICA=no \
		HAVE_TESSERACT=no \
		SO_VERSION=.${LIBmupdf_VERSION:R}.${LIBmupdf_VERSION:E} \
		build=release shared=yes verbose=yes

FAKE_FLAGS =	prefix=${PREFIX} mandir=${PREFIX}/man

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.if ${FLAVOR:Mjs}
MAKE_FLAGS +=	mujs=yes
.else
MAKE_FLAGS +=	mujs=no
.endif

# ld.bfd -r -b binary does not produce correct type of object.
.if ${MACHINE_ARCH:Mmips64*}
MAKE_FLAGS +=	HAVE_OBJCOPY=no
.endif

pre-configure:
	cd ${WRKSRC}; sed -i 's,/usr/X11R6/include,${X11BASE}/include,g' Makerules Makethird
	ln -fs /bin/ksh ${WRKDIR}/bin/bash
.if !${FLAVOR:Mjs}
	rm -r ${WRKSRC}/thirdparty/mujs
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}
	${INSTALL_DATA} ${FILESDIR}/mupdf.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/mupdf.desktop ${PREFIX}/share/applications/
	cd ${PREFIX}/bin; ln -s mupdf-x11 mupdf
	mv ${PREFIX}/share/doc/mupdf/examples ${PREFIX}/share/examples/mupdf
.if !${FLAVOR:Mjs}
	rm ${PREFIX}/share/examples/mupdf/*.js
.endif

.include <bsd.port.mk>
