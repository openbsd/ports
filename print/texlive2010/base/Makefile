# $OpenBSD: Makefile,v 1.4 2010/09/29 13:14:40 edd Exp $

COMMENT =		base binaries for TeXLive typesetting distribution

DISTNAME = 		texlive-${DIST_V}-source
PKGNAME =		texlive_base-${V}

SHARED_LIBS =		kpathsea	3.0
SHARED_LIBS +=		ptexenc		0.0		# 2.1

WANTLIB +=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c expat
WANTLIB +=		fontconfig freetype gd iconv jpeg lcms m ncurses
WANTLIB +=		openjpeg png.>=3 poppler pthread pthread-stubs stdc++
WANTLIB +=		t1.>=4 ttf xcb xml2 z

RUN_DEPENDS =		:ghostscript-*:print/ghostscript/gnu \
			:detex-*:print/detex \
			:dvi2tty-*:print/dvi2tty \
			:ps2eps-*:print/ps2eps \
			:psutils-*:print/psutils \
			:t1utils-*:print/t1utils
# XXX - RE-ADD THIS DEP LATER
#			:texlive_texmf-minimal-${V}:print/texlive/texmf,-main
			
LIB_DEPENDS =		::devel/t1lib \
			::graphics/png \
			::graphics/gd \
			::print/freetype \
			::print/poppler

# Never set SEPARATE_BUILD
CONFIGURE_STYLE =	gnu

# Don't put ${PREFIX}/include in CPPFLAGS or system icu .h's are picked up
CONFIGURE_ENV +=	TL_MAKE=${GMAKE} \
			CPPFLAGS="-I${TRUEPREFIX}/include/poppler -I${X11BASE}/include"
			
WRKBUILD =              ${WRKSRC}/Work # Can't build in same dir
CONFIGURE_SCRIPT =      ../configure
MAKE_ENV = 		${CONFIGURE_ENV}
NO_REGRESS =		Yes # not worth the effort.

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

.if ${MACHINE_ARCH} == "sparc64"
CFLAGS +=	-fPIC
.endif

# clisp limits which arches we can use xindy on
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS += 	:clisp-*:lang/clisp
LIB_DEPENDS +=		::devel/ffcall	# XXX still needed? try build on fresh sys
CONFIGURE_ARGS +=	--enable-xindy \
			--disable-xindy-rules
PKG_ARGS +=		-Dxindy=1
.else
PKG_ARGS +=		-Dxindy=0
.endif

# Do not link with system icu. TeXLive ICU is not vanilla (Yet)!
CONFIGURE_ARGS +=	--x-includes=${X11BASE}/include \
			--x-libraries=${X11BASE}/lib \
			--with-system-freetype2 \
			--with-system-freetype \
			--with-freetype-includes=${LOCALBASE}/include/freetype1/freetype \
			--with-freetype-libdir=${LOCALBASE}/lib \
			--with-system-gd \
			--with-gd-libdir=${LOCALBASE}/lib \
			--with-system-libpng \
			--with-libpng-includes=${LOCALBASE}/include/libpng \
			--with-libpng-libdir=${LOCALBASE}/lib \
			--with-system-ncurses \
			--with-system-pnglib \
			--with-pnglib-libdir=${LOCALBASE}/lib \
			--with-pnglib-include=${LOCALBASE}/include/libpng \
			--with-system-zlib \
			--with-system-t1lib \
			--with-t1lib-libdir=${LOCALBASE}/lib \
			--with-t1lib-includes=${LOCALBASE}/include \
			--with-xpdf-includes=${LOCALBASE}/include/poppler \
			--with-xpdf-libdir=${LOCALBASE}/lib \
			--enable-texinfo=no \
			--with-xdvi-x-toolkit=xaw \
			--enable-texi2html=no \
			--enable-detex=no \
			--enable-dvi2tty=no \
			--enable-ps2eps=no \
			--enable-psutils=no \
			--enable-t1utils=no \
			--disable-threads \
			--with-old-mac-fonts \
			--disable-multiplatform \
			--disable-native-texlive-build \
			--with-system-xpdf # link poppler, yay :)

SUBST_VARS +=		TRUEPREFIX LOCALBASE
PATCHORIG = 		.origy

# just to silence error - never used
pre-install:
	mkdir ${WRKSRC}/inst

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/texlive
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/texlive
	${INSTALL_SCRIPT} ${FILESDIR}/tl-link-config ${PREFIX}/bin
	${SUBST_CMD} ${PREFIX}/bin/tl-link-config
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf/web2c
	${INSTALL_DATA} -c ${FILESDIR}/fmtutil.cnf-minimal \
		${PREFIX}/share/texmf/web2c

.include <bsd.port.mk>
