# $OpenBSD: Makefile,v 1.51 2004/11/24 11:08:03 espie Exp $

COMMENT=	"vi clone, many additional features"
COMMENT-lang=	"vi clone, NLS subpackage"

DISTNAME=	vim-6.3
REVISION=	31
VERSION=	6.3.${REVISION}
PKGNAME=	vim-${VERSION}
P=		${DISTNAME:C/[-\.]//g}
CATEGORIES=	editors
MASTER_SITES=   ftp://ftp.vim.org/pub/vim/unix/ \
	        ftp://ftp.home.vim.org/pub/vim/unix/ \
	        ftp://ftp.berlin.de.vim.org/unix/
MASTER_SITES0=  ${MASTER_SITES:S/unix/patches\/6.3/}
MASTER_SITES1=	${MASTER_SITES:S/unix/extra/}
DISTFILES=	${DISTNAME}.tar.bz2 \
	        ${DISTNAME}-extra.tar.gz:1 \
		${DISTNAME}-lang.tar.gz:1 
DIST_SUBDIR=	vim6

HOMEPAGE=	http://www.vim.org/
MAINTAINER=	Chris Kuethe <chris.kuethe@gmail.com>

PATCHFILES=	#
_patches!=	jot -w%03d - 1 ${REVISION} 1
.for p in ${_patches}
PATCHFILES+=	6.3.${p}:0
.endfor

# allow vim to build on m68k and vax
.if (${MACHINE_ARCH} == "m68k")
PATCH_LIST=     patch-* sup-m68k-*
.elif (${MACHINE_ARCH} == "vax")
PATCH_LIST=     patch-* sup-vax-*
.endif

# donation-ware
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c curses

MODULES=	devel/gettext converters/libiconv

MULTI_PACKAGES= -lang
SUBPACKAGE?=
.if defined(PACKAGING) && ${SUBPACKAGE} == "-lang"
.  for i in ${FLAVOR:L}
_flavor:=${_flavor},$i
.  endfor
RUN_DEPENDS=::editors/vim${_flavor}
PKG_ARCH=*
.endif

.for i in ${MULTI_PACKAGES}
PKGNAME$i=      vim$i-${VERSION}
.endfor

FLAVORS=	huge gtk gtk2 athena motif no_x11 perl python ruby
FLAVOR?=	gtk

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--with-tlib="curses" --enable-multibyte

.if ${FLAVOR:L:Mhuge}
CONFIGURE_ARGS+=--with-features=huge
.endif

.if ${FLAVOR:L:Mperl}
CONFIGURE_ARGS+=--enable-perlinterp
.endif

.if ${FLAVOR:L:Mpython}
PYTHON_VER=     2.3
CONFIGURE_ENV+=	vi_cv_path_python=${LOCALBASE}/bin/python${PYTHON_VER}
CONFIGURE_ARGS+=--enable-pythoninterp \
	--with-python-config-dir=${LOCALBASE}/lib/python${PYTHON_VER}/config
LIB_DEPENDS+=	python${PYTHON_VER}.0.0:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
.endif

.if ${FLAVOR:L:Mruby}
CONFIGURE_ARGS+=--enable-rubyinterp
MAKE_ENV+=	RUBY="${LOCALBASE}/bin/ruby"
LIB_DEPENDS+=	ruby::lang/ruby
.endif

.if ${FLAVOR:L:Mno_x11} && \
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mathena} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--disable-gui --without-x
.elif ${FLAVOR:L:Mmotif} && \
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--enable-gui="motif" --with-x --enable-fontset --enable-xim
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
USE_MOTIF=any
.elif ${FLAVOR:L:Mathena} && \
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--enable-gui="athena" --with-x --enable-fontset --enable-xim
.elif ${FLAVOR:L:Mgtk} && \
	!${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena} && !${FLAVOR:L:Mgtk2}
LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+
CONFIGURE_ARGS+=--enable-gui="gtk" --with-x --enable-fontset --enable-xim --disable-gtk2-check
WANTLIB+=	ICE SM X11 Xext Xi Xt glib gmodule m
.elif ${FLAVOR:L:Mgtk2} && \
	        !${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena} && !${FLAVOR:L:Mgtk}
LIB_DEPENDS+=   gdk-x11-2.0.0.11,gdk_pixbuf-2.0.0.11,gtk-x11-2.0.0.11::x11/gtk+2
CONFIGURE_ARGS+=--enable-gui="gtk2" --with-x --enable-fontset --enable-xim --disable-gtk-check --enable-gtk2-check
.else
ERRORS+="Fatal: You must select one GUI interface: no_x11, gtk, athena or motif"
.endif

WRKDIST=		${WRKDIR}/${P}
WRKSRC=			${WRKDIST}/src

SUBST_VARS=     	P

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
