# $OpenBSD: Makefile,v 1.25 2003/04/04 21:19:23 sturm Exp $

COMMENT=	"TeX distribution, executables"

VERSION=	2.0.2
DISTNAME=	tetex-base-${VERSION}
PKGNAME=	${DISTNAME:S/tetex-/teTeX_/}
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

FLAVORS=	no_x11
FLAVOR?= 
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=--without-x
.else
CONFIGURE_ARGS+=--with-system-t1lib \
		--with-t1lib-libdir=${PREFIX}/lib \
		--with-t1lib-include=${PREFIX}/include
LIB_DEPENDS+=	t1.4::devel/t1lib
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
USE_X11=	Yes
.endif

WRKDIST=	${WRKDIR}/${DISTNAME:S/base/src/}
TETEX_EXDIR=	${PREFIX}/share/examples/teTeX

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

post-install:
	${INSTALL_DATA_DIR} ${TETEX_EXDIR}
	${INSTALL_DATA} files/tetex.cfg ${TETEX_EXDIR}/tetex.cfg
	${INSTALL_SCRIPT} files/tetex_setup.sh ${PREFIX}/bin/tetex_setup
	@perl -i -pe "s#%%SYSCONFDIR%%#${SYSCONFDIR}#;" \
		-e "s#%%PREFIX%%#${TRUEPREFIX}#;" ${PREFIX}/bin/tetex_setup

# need the texmf part visible...
pre-regress: fake

.include <bsd.port.mk>
