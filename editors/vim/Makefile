# $OpenBSD: Makefile,v 1.66 2006/05/24 18:37:35 sturm Exp $

COMMENT=	"vi clone, many additional features"
COMMENT-lang=	"vi clone, NLS subpackage"

DISTNAME=	vim-7.0
REVISION=	0
VERSION=	7.0.${REVISION}
# keep PKGNAME for full version number
PKGNAME=	vim-${VERSION}p0
P=		${DISTNAME:C/[-\.]//g}
CATEGORIES=	editors
MASTER_SITES=	ftp://ftp.vim.org/pub/vim/unix/ \
		ftp://ftp.home.vim.org/pub/vim/unix/ \
		ftp://ftp.berlin.de.vim.org/unix/
MASTER_SITES0=	${MASTER_SITES:S/unix/patches\/7.0/}
MASTER_SITES1=	${MASTER_SITES:S/unix/extra/}
DISTFILES=	${DISTNAME}.tar.bz2 \
		${DISTNAME}-lang.tar.gz:1 
DIST_SUBDIR=	vim7

HOMEPAGE=	http://www.vim.org/
MAINTAINER=	Chris Kuethe <chris.kuethe@gmail.com>

PATCHFILES=	#
#_patches!=	jot -w%03d - 1 ${REVISION} 1
#.for p in ${_patches}
#PATCHFILES+=	7.0.${p}:0
#.endfor

# allow vim to build on m68k and vax
.if (${MACHINE_ARCH} == "m68k")
PATCH_LIST=	patch-* sup-m68k-*
.elif (${MACHINE_ARCH} == "vax")
PATCH_LIST=	patch-* sup-vax-*
.endif

# donation-ware
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

MULTI_PACKAGES=	-lang
SUBPACKAGE?=

.for i in ${MULTI_PACKAGES}
PKGNAME$i=	vim$i-${VERSION}p0
.endfor

FLAVORS=	huge gtk2 athena motif no_x11 perl python ruby
FLAVOR?=	gtk2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
CONFIGURE_ARGS+=--with-tlib="curses" --enable-multibyte

.if ${FLAVOR:L:Mhuge}
CONFIGURE_ARGS+=--with-features=huge
.endif

.if ${FLAVOR:L:Mperl}
CONFIGURE_ARGS+=--enable-perlinterp
WANTLIB+=	m perl util
.endif

.if ${FLAVOR:L:Mpython}
PYTHON_VER=	2.4
CONFIGURE_ENV+=	vi_cv_path_python=${DEPBASE}/bin/python${PYTHON_VER}
CONFIGURE_ARGS+=--enable-pythoninterp \
	--with-python-config-dir=${DEPBASE}/lib/python${PYTHON_VER}/config
LIB_DEPENDS+=	python${PYTHON_VER}.0.0:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
WANTLIB+=	m pthread util
.endif

.if ${FLAVOR:L:Mruby}
CONFIGURE_ARGS+=--enable-rubyinterp
MAKE_ENV+=	RUBY="${DEPBASE}/bin/ruby"
LIB_DEPENDS+=	ruby::lang/ruby
WANTLIB+=	m
.endif

.if ${FLAVOR:L:Mno_x11} && \
	!${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mathena} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--disable-gui --without-x
.elif ${FLAVOR:L:Mmotif} && \
	!${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--enable-gui="motif" --with-x --enable-fontset --enable-xim
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
USE_MOTIF=	any
WANTLIB+=	ICE SM X11 Xext Xmu Xpm Xt
.elif ${FLAVOR:L:Mathena} && \
	!${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--enable-gui="athena" --with-x --enable-fontset --enable-xim
WANTLIB+=	ICE SM X11 Xaw Xext Xmu Xpm Xt
.elif ${FLAVOR:L:Mgtk2} && \
		!${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena}
LIB_DEPENDS+=	gdk-x11-2.0.0.11,gdk_pixbuf-2.0.0.11,gtk-x11-2.0.0.11::x11/gtk+2
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
CONFIGURE_ARGS+=--enable-gui="gtk2" --with-x --enable-fontset --enable-xim --disable-gtk-check --enable-gtk2-check
WANTLIB+=	ICE SM X11 Xext Xft Xrender Xt fontconfig freetype m \
	 	atk-1.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0
.else
ERRORS=		"Fatal: You must select one GUI interface: no_x11, gtk2, athena or motif"
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-lang"
.  for i in ${FLAVOR:L}
_flavor:=	${_flavor},$i
.  endfor
RUN_DEPENDS=	::editors/vim${_flavor}
PKG_ARCH=	*
LIB_DEPENDS=
WANTLIB=
.else
MODULES=	devel/gettext
.endif

WRKDIST=	${WRKDIR}/${P}
WRKSRC=		${WRKDIST}/src

SUBST_VARS=	P

.include <bsd.own.mk>

# don't try to regenerate the configure script. Works around the fact that
# auto/configure.in is newer than auto/configure.
post-patch:
	touch ${WRKBUILD}/auto/configure

post-configure:
	touch ${WRKBUILD}/auto/config.mk

post-install:
	${INSTALL_DATA} ${FILESDIR}/pf.vim ${PREFIX}/share/vim/${P}/syntax

.include <bsd.port.mk>
