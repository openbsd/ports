# $OpenBSD: Makefile,v 1.26 2009/09/10 15:30:21 naddy Exp $

COMMENT =		base binaries for TeXLive typesetting distribution

DIST_V = 		20080816
DISTNAME =		texlive-${DIST_V}-source
PKGNAME =		texlive_base-${V}p12
SHARED_LIBS =		kpathsea	1.0

WANTLIB =		m X11 ICE freetype Xt pthread c Xext fontconfig \
			Xp Xpm SM Xmu z ncurses Xaw Xau Xdmcp stdc++ expat \
			pthread-stubs xcb

EXTRACT_SUFX =		.tar.lzma

BUILD_DEPENDS =		::archivers/xz
RUN_DEPENDS =		:ghostscript-*:print/ghostscript/gnu \
			:detex-*:print/detex \
			:dvi2tty-*:print/dvi2tty \
			:ps2eps-*:print/ps2eps \
			:psutils-*:print/psutils \
			:t1utils-*:print/t1utils \
			:texlive_texmf-minimal-*:print/texlive/texmf,-main
			
LIB_DEPENDS =		t1.>=4::devel/t1lib \
			png.>=3::graphics/png

# Never set SEPARATE_BUILD
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		GNUMAKE=${GMAKE}
WRKBUILD =		${WRKSRC}/work # Can't build in same dir
CONFIGURE_SCRIPT = 	../configure
MAKE_ENV = 		${CONFIGURE_ENV}
NO_REGRESS =		Yes # does not listen to DESTDIR, not worth the effort.

USE_X11 =	Yes
USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

.if ${MACHINE_ARCH} == "sparc64"
CFLAGS +=	-fPIC
.endif

# Do not link with system icu. TeXLive ICU is not vanilla (Yet)!
# Xindy not ready yet
CONFIGURE_ARGS +=	--with-fontconfig=${X11BASE} \
			--with-system-freetype2 \
			--with-freetype2-libdir=${X11BASE}/lib \
			--with-freetype2-include=${X11BASE}/include \
			--with-system-ncurses \
			--with-system-pnglib \
			--with-pnglib-libdir=${LOCALBASE}/lib \
			--with-pnglib-include=${LOCALBASE}/include/libpng \
			--with-system-zlib \
			--with-system-t1lib \
			--with-t1lib-libdir=${LOCALBASE}/lib \
			--with-t1lib-include=${LOCALBASE}/include \
			--without-texinfo \
			--with-xdvi-x-toolkit=xaw \
			--without-texi2html \
			--disable-multiplatform \
			--without-detex \
			--without-dvi2tty \
			--without-ps2eps \
			--without-psutils \
			--without-t1utils \
			--disable-threads \
			--with-old-mac-fonts \
			--without-xindy

SUBST_VARS +=		TRUEPREFIX

# Could do with bsd.port.mk understanding lzma
# Also annoyingly loads of .orig files confuse update-patches
do-extract:
	cd ${WRKDIR} && \
	xz -dc ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} | ${TAR} xf -
	find ${WRKDIST} -name '*.orig' | xargs rm

post-install:
	${INSTALL_DATA} ${FILESDIR}/fmtutil.cnf-minimal \
		${PREFIX}/share/texmf/web2c
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/texlive
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/texlive
	${INSTALL_SCRIPT} ${FILESDIR}/tl-link-config \
		${PREFIX}/bin
	${SUBST_CMD} ${PREFIX}/bin/tl-link-config

.include <bsd.port.mk>
