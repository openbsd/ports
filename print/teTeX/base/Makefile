# $OpenBSD: Makefile,v 1.22 2003/02/18 16:04:49 sturm Exp $

COMMENT=	"TeX distribution, executables"

VERSION=	2.0.1
DISTNAME=	tetex-base-${VERSION}
CATEGORIES=	print

DISTFILES=	tetex-src-${VERSION}.tar.gz

BUILD_DEPENDS=	:teTeX_texmf->=2.0:print/teTeX/texmf
RUN_DEPENDS=	:teTeX_texmf->=2.0:print/teTeX/texmf \
		:texi2html->=1.56:textproc/texi2html
LIB_DEPENDS=	png.3::graphics/png

CONFIGURE_STYLE=gnu dest

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config \
		${WRKSRC}/libs/libwww/config \
		${WRKSRC}/libs/ncurses \
		${WRKSRC}/texk \
		${WRKSRC}/utils/texinfo

CONFIGURE_ARGS= --disable-multiplatform \
		--without-texinfo \
		--with-system-ncurses \
		--with-system-pnglib \
		--with-pnglib-libdir=${PREFIX}/lib \
		--with-pnglib-include=${PREFIX}/include/libpng \
		--with-system-zlib

FLAVORS=	a4 no_x11
FLAVOR?= 
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=--without-x
.	if ${FLAVOR:L:Ma4}
CONFIGURE_ARGS+=--enable-a4
.	else
CONFIGURE_ARGS+=--disable-a4
.	endif
.else
CONFIGURE_ARGS+=--with-system-t1lib \
		--with-t1lib-libdir=${PREFIX}/lib \
		--with-t1lib-include=${PREFIX}/include
LIB_DEPENDS+=	t1.4::devel/t1lib
USE_X11=	Yes
.	if ${FLAVOR:L:Ma4}
CONFIGURE_ARGS+=--enable-a4
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu,a4
.	else
CONFIGURE_ARGS+=--disable-a4
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
.	endif
.endif

WRKDIST=	${WRKDIR}/${DISTNAME:S/base/src/}

# find texmf after fake
REGRESS_FLAGS=	DESTDIR="${WRKINST}"

post-configure:
	@find ${WRKBUILD} -name Makefile -exec perl -i -pe \
	    's#^(texmf\s*\=\s*)${PREFIX}#$$1\$${${DESTDIRNAME}}${PREFIX}#' {} \;

# need the texmf part visible...
pre-fake:
	${INSTALL_DATA_DIR} ${TEXMF_DIR}
	lndir ${TRUEPREFIX}/share/texmf ${TEXMF_DIR}
	# mktexlsr is too smart for its own good
	rm ${TEXMF_DIR}/ls-R

# need the texmf part visible...
pre-regress: fake

.include <bsd.port.mk>
