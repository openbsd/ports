# $OpenBSD: Makefile,v 1.31 2010/01/10 16:43:36 edd Exp $

COMMENT =		base binaries for TeXLive typesetting distribution

DISTNAME = 		texlive-${DIST_V}-source
PKGNAME =		texlive_base-${V}p3
SHARED_LIBS =		kpathsea	2.0

WANTLIB =		m X11 ICE freetype Xt c Xext fontconfig Xpm SM Xmu z \
			ncurses Xaw Xau Xdmcp expat iconv jpeg lcms pthread \
			pthread-stubs stdc++ xcb xml2

RUN_DEPENDS =		:ghostscript-*:print/ghostscript/gnu \
			:detex-*:print/detex \
			:dvi2tty-*:print/dvi2tty \
			:ps2eps-*:print/ps2eps \
			:psutils-*:print/psutils \
			:t1utils-*:print/t1utils \
			:texlive_texmf-minimal-${V}:print/texlive/texmf,-main
			
LIB_DEPENDS =		t1.>=4::devel/t1lib \
			png.>=3::graphics/png \
			gd::graphics/gd \
			ttf::print/freetype \
			poppler::print/poppler

# Never set SEPARATE_BUILD
CONFIGURE_STYLE =	gnu

# Don't put ${PREFIX}/include in CPPFLAGS or system icu .h's are picked up
CONFIGURE_ENV +=	TL_MAKE=${GMAKE} LDFLAGS="-lm -lpthread" \
			CPPFLAGS=-I/usr/local/include/poppler
			
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
LIB_DEPENDS +=		sigsegv::devel/libsigsegv \
			avcall,callback::devel/ffcall
CONFIGURE_ARGS +=	--enable-xindy
PKG_ARGS +=		-Dxindy=1
WANTLIB +=		readline
MODULES +=		devel/gettext
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
			--with-tex-banner=PuffTeX-2009 \
			--disable-multiplatform \
			--disable-native-texlive-build \
			--with-system-xpdf # link poppler, yay :)

SUBST_VARS +=		TRUEPREFIX LOCALBASE

# clear upstreams .orig files, so update-patches is not confused
post-extract:
	find ${WRKDIST} -name '*.orig' | xargs rm

post-patch:
	${SUBST_CMD} ${WRKSRC}/utils/xindy/rte/ordrules/Makefile.in

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
