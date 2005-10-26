# $OpenBSD: Makefile,v 1.37 2005/10/26 20:07:29 bernd Exp $

COMMENT=	"TeX distribution, executables"
COMMENT-fmt=	"format files"

VERSION=	3.0
DISTNAME=	tetex-base-${VERSION}
PKGNAME=	teTeX_base-${VERSION}p2
FULLPKGNAME-fmt=teTeX_base-fmt-${VERSION}p0
CATEGORIES=	print

DISTFILES=	tetex-src-${VERSION}.tar.gz

WANTLIB=	c m ncurses stdc++ z

BUILD_DEPENDS=	:teTeX_texmf->=3.0:print/teTeX/texmf
LIB_DEPENDS=	png.3::graphics/png

CONFIGURE_STYLE=gnu dest

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config \
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
MULTI_PACKAGES=	-fmt
SUBPACKAGE?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=--without-x
.  if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.  endif
.else
CONFIGURE_ARGS+=--with-system-t1lib \
		--with-t1lib-libdir=${PREFIX}/lib \
		--with-t1lib-include=${PREFIX}/include \
		--with-xdvi-x-toolkit=xaw
LIB_DEPENDS+=	t1.4::devel/t1lib
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xaw Xext Xmu Xp Xpm Xt
.  if defined(PACKAGING) && ${SUBPACKAGE} != "-fmt"
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
.  endif
.endif

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-fmt"
WANTLIB=
LIB_DEPENDS=
PREFIX=		/var
RUN_DEPENDS=	:teTeX_texmf->=3.0:print/teTeX/texmf
.  else
RUN_DEPENDS+=	:teTeX_base-fmt-${VERSION}:print/teTeX/base,-fmt \
		:texi2html->=1.56:textproc/texi2html
.  endif
.endif

WRKDIST=	${WRKDIR}/${DISTNAME:S/base/src/}
TETEX_EXDIR=	${PREFIX}/share/examples/teTeX

# find texmf after fake
REGRESS_FLAGS=	DESTDIR="${WRKINST}"

post-configure:
	@perl -pi -e "s,\@sysconfdir\@,${SYSCONFDIR}," \
		${WRKSRC}/texk/kpathsea/texmf.in-teTeX

# need the texmf part visible...
pre-fake:
	${INSTALL_DATA_DIR} ${TEXMF_DIR}
	${INSTALL_DATA_DIR} ${WRKINST}/var/texmf
	lndir ${TRUEPREFIX}/share/texmf-dist ${TEXMF_DIR}
	# mktexlsr is too smart for its own good
	rm ${TEXMF_DIR}/ls-R

post-install:
	@cp ${PREFIX}/share/texmf/web2c/texmf.cnf \
		${PREFIX}/share/texmf/web2c/texmf.cnf.dist
	${INSTALL_DATA_DIR} ${TETEX_EXDIR}
	${INSTALL_DATA} files/tetex.cfg ${TETEX_EXDIR}/tetex.cfg
	${INSTALL_SCRIPT} files/tetex_setup.sh ${PREFIX}/bin/tetex_setup
	@perl -i -pe "s#%%SYSCONFDIR%%#${SYSCONFDIR}#;" \
		-e "s#%%PREFIX%%#${TRUEPREFIX}#;" ${PREFIX}/bin/tetex_setup

# need the texmf part visible...
pre-regress: _internal-fake

.include <bsd.port.mk>
