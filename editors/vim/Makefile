# $OpenBSD: Makefile,v 1.180 2019/03/08 01:55:36 sthen Exp $

COMMENT-main=	vi clone, many additional features
COMMENT-lang=	vi clone, NLS subpackage

V=		8.1.0998
GH_ACCOUNT=	vim
GH_PROJECT=	vim
GH_TAGNAME=	v$V

T=		${V:C/\.0+/./}
PKGNAME-main=	vim-$T
PKGNAME-lang=	vim-lang-$T
FULLPKGNAME-lang= vim-lang-$T
FULLPKGPATH-lang= ${PKGPATH},-lang
P=		vim${V:R:S/.//}
CATEGORIES=	editors

HOMEPAGE=	https://www.vim.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# donation-ware
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c curses iconv intl

LIB_DEPENDS-main= ${LIB_DEPENDS} devel/gettext

MULTI_PACKAGES=	-main -lang

# UI flavours (pick one only)
FLAVORS+=	gtk2 gtk3 athena motif no_x11
# others
FLAVORS+=	lua perl python python3 ruby
FLAVOR?=	gtk3

.include <bsd.port.arch.mk>
.if ${FLAVOR:Mno_x11}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-lang}
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_elf_main=no
CONFIGURE_ARGS+= --with-tlib="curses" \
		--enable-multibyte \
		--enable-cscope

AUTOCONF_VERSION= 2.69
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		devel/gettext-tools

.if defined(DEBUG)
MAKE_FLAGS+= STRIP=:
.endif

.if ${FLAVOR:Mlua}
MODULES+=	lang/lua
MODLUA_VERSION=	5.1
CONFIGURE_ENV+=	vi_cv_path_plain_lua=${MODLUA_BIN}
CONFIGURE_ARGS+= --enable-luainterp --with-lua-prefix=${LOCALBASE}
LIB_DEPENDS+=	${MODLUA_LIB_DEPENDS}
WANTLIB+=	m ${MODLUA_WANTLIB}
.endif

.if ${FLAVOR:Mperl}
CONFIGURE_ARGS+= --enable-perlinterp
WANTLIB+=	m perl util
.endif

.if ${FLAVOR:Mpython}
MODULES+=	lang/python
CONFIGURE_ENV+=	vi_cv_path_python=${MODPY_BIN}
CONFIGURE_ARGS+= --enable-pythoninterp=yes --enable-python3interp=no \
	--with-python-config-dir=${MODPY_LIBDIR}/config
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS}
WANTLIB+=	m ${MODPY_WANTLIB}
.endif

.if ${FLAVOR:Mpython3}
MODULES+=	lang/python
MODPY_MAJOR_VERSION = 3
CONFIGURE_ENV+=	vi_cv_path_python3=${MODPY_BIN}
CONFIGURE_ARGS+= --enable-python3interp=yes --enable-pythoninterp=no \
	--with-python3-config-dir=${MODPY_LIBDIR}/config-${MODPY_VERSION}m
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS}
WANTLIB+=	m ${MODPY_WANTLIB}
.endif

# Some parts of vim (like python autocompletion) require a version of vim
# compiled with "+python" or "+python3". If python2 and python3 are enabled
# in configure, vim is compiled with "+python/dyn" and "+python3/dyn" and that
# breaks some plugins.
.if ${FLAVOR:Mpython} && ${FLAVOR:Mpython3}
ERRORS=		"Fatal: You only can select one python flavor"
.endif

.if ${FLAVOR:Mruby}
MODULES+=	lang/ruby
CONFIGURE_ARGS+= --enable-rubyinterp --with-ruby-command=${RUBY}
LIB_DEPENDS+=	${MODRUBY_LIB_DEPENDS}
WANTLIB+=	m ${MODRUBY_WANTLIB}
.endif

# GUI options, only one is allowed
.if ${FLAVOR:Mno_x11}
_GUISET+=	ok
CONFIGURE_ARGS+= --disable-gui \
		--without-x
WANTLIB+=	m
.endif

.if ${FLAVOR:Mmotif}
_GUISET+=	ok
CONFIGURE_ARGS+= --enable-gui="motif" \
		--enable-fontset \
		--enable-xim \
		--with-x
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
LIB_DEPENDS+=	x11/motif
WANTLIB +=	m ICE SM X11 Xmu Xpm Xt Xm
MAKE_ENV+=	MOTIFLIB='-L${LOCALBASE}/lib -lXm'
.endif

.if ${FLAVOR:Mathena}
_GUISET+=	ok
CONFIGURE_ARGS+= --enable-gui="athena" \
		--enable-fontset \
		--enable-xim \
		--with-x
WANTLIB +=	m ICE SM X11 Xaw Xmu Xpm Xt
.endif

.if ${FLAVOR:Mgtk2}
_GUISET+=	ok
LIB_DEPENDS+=	x11/gtk+2
CONFIGURE_ARGS+= --enable-gui="gtk2" \
		--enable-xim \
		--with-x
WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xt atk-1.0 cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z
.endif

.if ${FLAVOR:Mgtk3}
_GUISET+=	ok
LIB_DEPENDS+=	x11/gtk+3
CONFIGURE_ARGS+= --enable-gui="gtk3" \
		--enable-xim \
		--with-x
WANTLIB += ICE SM X11 Xt atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0
.endif

.if "${_GUISET}" != ok
ERRORS=		"Fatal: You must select one (and only one) GUI interface: no_x11, gtk2, gtk3, athena or motif"
.endif

RUN_DEPENDS-lang=	editors/vim,-main
PKG_ARCH-lang=		*
LIB_DEPENDS-lang=
WANTLIB-lang=

WRKSRC=		${WRKDIST}/src
SUBST_VARS=	P

.if ${P} != vim81
ERRORS=		"Fatal: Major version was updated; sync editors/vim-spell and update this check"
.endif

do-gen:
	cd ${WRKSRC}; ${AUTOCONF_ENV} autoconf

post-configure:
	touch ${WRKBUILD}/auto/config.mk

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/{doc,syntax}
	${INSTALL_DATA} ${FILESDIR}/openbsd.vim \
		${PREFIX}/share/vim/vimfiles/syntax/

.if ! ${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_DATA} ${WRKDIST}/runtime/gvim.desktop \
		${PREFIX}/share/applications/gvim.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/runtime/vim48x48.png ${PREFIX}/share/pixmaps/vim.png

RUN_DEPENDS+= devel/desktop-file-utils
RUN_DEPENDS+= x11/gtk+3,-guic
.endif

.include <bsd.port.mk>
