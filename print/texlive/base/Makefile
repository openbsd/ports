# $OpenBSD: Makefile,v 1.3 2007/09/07 21:59:53 steven Exp $

COMMENT=		base TeXLive LaTeX distribution

V=			2007
DISTNAME=		texlive_base-${V}-src
PKGNAME=		texlive_base-${V}
WRKDIST=		${WRKDIR}/texlive_base-${V}
SHARED_LIBS=		kpathsea	0.0

WANTLIB=		m X11 ICE freetype Xt pthread c Xext fontconfig \
			Xp Xpm SM Xmu z ncurses Xaw Xau Xdmcp stdc++ expat

EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:texlive_texmf-minimal-${V}:print/texlive/texmf-minimal
RUN_DEPENDS=		:texlive_texmf-minimal-${V}:print/texlive/texmf-minimal \
			:ruby-*:lang/ruby \
			:ghostscript-*:print/ghostscript/gnu \
			:detex-*:print/detex \
			:dvi2tty-*:print/dvi2tty \
			:ps2eps-*:print/ps2eps \
			:psutils-*:print/psutils \
			:t1utils-*:print/t1utils
LIB_DEPENDS=		t1.>=4::devel/t1lib \
			png.>=3::graphics/png

SEPARATE_BUILD=	simple
USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
NO_REGRESS=	Yes # Regress does not listen to DESTDIR, not worth the effort.

CONFIGURE_STYLE=	gnu

# Do not link with system icu. TeXLive ICU is not vanilla (Yet)!
CONFIGURE_ARGS+=	--with-fontconfig=${X11BASE} \
			--with-system-freetype2 \
			--with-freetype2-libdir=${X11BASE}/lib \
			--with-freetype2-include=${X11BASE}/include \
			--with-system-ncurses \
			--with-system-pnglib \
			--with-pnglib-libdir=${TRUEPREFIX}/lib \
			--with-pnglib-include=${TRUEPREFIX}/include/libpng \
			--with-system-zlib \
			--with-system-t1lib \
			--with-t1lib-libdir=${TRUEPREFIX}/lib \
			--with-t1lib-include=${TRUEPREFIX}/include \
			--without-texinfo \
			--with-xdvi-x-toolkit=xaw \
			--without-texi2html \
			--disable-multiplatform \
			--without-detex \
			--without-dvi2tty \
			--without-ps2eps \
			--without-psutils \
			--without-t1utils
post-install:
	@# Set SYSCONFDIR properly so that updmap-sys works
	mv ${PREFIX}/share/texmf/web2c/texmf.cnf \
                ${PREFIX}/share/texmf/web2c/texmf.cnf-dist
	sed -e 's/^TEXMFSYSCONFIG = .*/TEXMFSYSCONFIG = $$TEXMFMAIN/g' \
		${PREFIX}/share/texmf/web2c/texmf.cnf-dist > \
		${PREFIX}/share/texmf/web2c/texmf.cnf

.include <bsd.port.mk>
