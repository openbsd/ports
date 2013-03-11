# $OpenBSD: Makefile,v 1.124 2013/03/11 11:02:50 espie Exp $

COMMENT-main=	vi clone, many additional features
COMMENT-lang=	vi clone, NLS subpackage

DISTNAME=	vim-7.3
REV=		154
VERSION=	7.3.${REV}
# keep PKGNAME for full version number
PKGNAME=	vim-${VERSION}
PKGNAME-main=	vim-${VERSION}
REVISION-main=	2
PKGNAME-lang=	vim-lang-${VERSION}
REVISION-lang = 0
P=		${DISTNAME:C/[-\.]//g}
CATEGORIES=	editors
MASTER_SITES=	ftp://ftp.vim.org/pub/vim/unix/ \
		ftp://ftp.home.vim.org/pub/vim/unix/ \
		ftp://ftp.berlin.de.vim.org/unix/
MASTER_SITES0=	${MASTER_SITES:S/unix/patches\/7.3/}
DISTFILES=	${DISTNAME}.tar.bz2
DIST_SUBDIR=	vim73

HOMEPAGE=	http://www.vim.org/
MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

PATCHFILES=	# 
#_patches!=	jot -w%03d - 1 ${REV} 1
_patches!=	jot -w%03d - 1 ${REV} 1 | \
	egrep -v '009|010|021|027|035|036|037|051|063|064|079|085|087|095|108|113|119|125|131|136|146'
.for p in ${_patches}
PATCHFILES+=	7.3.${p}:0
.endfor

# allow vim to build on m68k and vax
.if (${MACHINE_ARCH} == "m68k")
PATCH_LIST=	patch-* sup-m68k-*
.elif (${MACHINE_ARCH} == "vax")
PATCH_LIST=	patch-* sup-vax-*
.endif

# donation-ware
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c curses

USE_GROFF =	Yes
MULTI_PACKAGES=	-main -lang

FLAVORS=	huge gtk2 athena motif no_x11 perl python ruby
FLAVOR?=	gtk2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
CONFIGURE_ARGS+=--with-tlib="curses" --enable-multibyte --enable-cscope

.if ${FLAVOR:Mhuge}
CONFIGURE_ARGS+=--with-features=huge
.endif

.if ${FLAVOR:Mperl}
CONFIGURE_ARGS+=--enable-perlinterp
WANTLIB+=	m perl util
.endif

.if ${FLAVOR:Mpython}
MODULES+=	lang/python
CONFIGURE_ENV+=	vi_cv_path_python=${MODPY_BIN}
CONFIGURE_ARGS+=--enable-pythoninterp \
	--with-python-config-dir=${MODPY_LIBDIR}/config
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS}
WANTLIB+=	m pthread util ${MODPY_WANTLIB}
.endif

.if ${FLAVOR:Mruby}
MODULES+=	lang/ruby
CONFIGURE_ARGS+=--enable-rubyinterp
MAKE_ENV+=	RUBY="${RUBY}"
LIB_DEPENDS+=	${MODRUBY_LIB_DEPENDS}
WANTLIB+=	m ${MODRUBY_WANTLIB}
.endif

.if ${FLAVOR:Mno_x11} && \
	!${FLAVOR:Mmotif} && !${FLAVOR:Mathena} && !${FLAVOR:Mgtk2}
CONFIGURE_ARGS+=--disable-gui --without-x
WANTLIB+=	m
.elif ${FLAVOR:Mmotif} && \
	!${FLAVOR:Mno_x11} && !${FLAVOR:Mathena} && !${FLAVOR:Mgtk2}
CONFIGURE_ARGS+=--enable-gui="motif" --with-x --enable-fontset --enable-xim
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
LIB_DEPENDS+=	x11/openmotif
WANTLIB+=	m ICE SM X11 Xmu Xpm Xt Xm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'
.elif ${FLAVOR:Mathena} && \
	!${FLAVOR:Mno_x11} && !${FLAVOR:Mmotif} && !${FLAVOR:Mgtk2}
CONFIGURE_ARGS+=--enable-gui="athena" --with-x --enable-fontset --enable-xim
WANTLIB+=	m ICE SM X11 Xaw Xmu Xpm Xt
.elif ${FLAVOR:Mgtk2} && \
		!${FLAVOR:Mmotif} && !${FLAVOR:Mno_x11} && !${FLAVOR:Mathena}
MAKE_FLAGS+=	'LDFLAGS=-pthread'
MAKE_FLAGS+=	'CFLAGS=-pthread'
LIB_DEPENDS+=	x11/gtk+2
CONFIGURE_ARGS+=--enable-gui="gtk2" --with-x --enable-fontset --enable-xim --disable-gtk-check --enable-gtk2-check
WANTLIB+=	ICE SM X11 Xext Xrender Xt fontconfig freetype m z\
	 	atk-1.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 png expat\
		pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo pthread\
		Xau Xcomposite Xcursor Xdamage Xfixes Xi Xinerama \
		Xrandr pixman-1 pthread-stubs xcb gthread-2.0 xcb-render \
		gdk_pixbuf-2.0 gdk-x11-2.0>=0.11 gtk-x11-2.0>=0.11 GL \
		Xdmcp Xpm Xxf86vm drm xcb-shm
.else
ERRORS=		"Fatal: You must select one GUI interface: no_x11, gtk2, athena or motif"
.endif

RUN_DEPENDS-lang=	${BUILD_PKGPATH}
PKG_ARCH-lang=		*
LIB_DEPENDS-lang=
WANTLIB-lang=
MODULES+=		devel/gettext

WRKDIST=	${WRKDIR}/${P}
WRKSRC=		${WRKDIST}/src

SUBST_VARS=	P

# don't try to regenerate the configure script. Works around the fact that
# auto/configure.in is newer than auto/configure.
post-patch:
	touch ${WRKBUILD}/auto/configure

post-configure:
	touch ${WRKBUILD}/auto/config.mk

post-install:
	${INSTALL_DATA} ${FILESDIR}/pf.vim ${PREFIX}/share/vim/${P}/syntax

.include <bsd.port.mk>
