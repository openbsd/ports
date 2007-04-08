# $OpenBSD: Makefile,v 1.46 2007/04/08 16:33:41 sturm Exp $

COMMENT-main=	"TeX distribution, executables"
COMMENT-fmt=	"format files"

VERSION=	3.0
DISTNAME=	tetex-base-${VERSION}
PKGNAME-main=	teTeX_base-${VERSION}p9
FULLPKGNAME-fmt=teTeX_base-fmt-${VERSION}p0
CATEGORIES=	print

DISTFILES=	tetex-src-${VERSION}.tar.gz


BUILD_DEPENDS=		:teTeX_texmf->=3.0:print/teTeX/texmf

WANTLIB-main=		c m ncurses stdc++ z
LIB_DEPENDS-main=	png.>=3::graphics/png
RUN_DEPENDS-main=	:teTeX_base-fmt-${VERSION}:print/teTeX/base,-fmt \
			:texi2html->=1.56:textproc/texi2html

WANTLIB-fmt=
LIB_DEPENDS-fmt=
PREFIX-fmt=		/var
RUN_DEPENDS-fmt=	:teTeX_texmf->=3.0:print/teTeX/texmf

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
MULTI_PACKAGES=	-main -fmt

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
USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared
LIB_DEPENDS-main+=	t1.>=4::devel/t1lib
WANTLIB-main+=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xp Xpm Xt
RUN_DEPENDS-main+=	:ghostscript-*:print/ghostscript/gnu
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
pre-regress: fake

.include <bsd.port.mk>
