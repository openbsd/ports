COMMENT-main=	vi clone, many additional features
COMMENT-lang=	vi clone, NLS subpackage

# careful with PLISTs if updating; it usually works best if you use
# a gui flavour rather than no_x11
V=		9.1.0205
VS=		${V:C/\.0+/./}

DIST_TUPLE+=	github vim vim v$V . \
		github vim colorschemes	22986fa2a3d2f7229efd4019fcbca411caa6afbb .

PKGNAME=	vim-${VS}
FULLPKGNAME-lang= vim-lang-${VS}
FULLPKGPATH-lang= ${PKGPATH},-lang
P=		vim${V:R:S/.//}
CATEGORIES=	editors

HOMEPAGE=	https://www.vim.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# donation-ware
PERMIT_PACKAGE=	Yes

# ruby 3.2 libraries need ports-gcc
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB +=	c curses iconv intl m sodium

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		devel/gettext,-runtime \
		security/libsodium

MULTI_PACKAGES=	-main -lang

# UI flavours (pick one only)
FLAVORS+=	gtk3 no_x11
# others
FLAVORS+=	lua perl python3 ruby
# bump deps if changing (RUN_DEPENDS in dependent ports picks this up)
FLAVOR?=	gtk3

.include <bsd.port.arch.mk>
.if ${FLAVOR:Mno_x11}
# knock out -lang on non-gui builds so that -lang includes manpages
# for the gui parts without having to flavour it
BUILD_PACKAGES := ${BUILD_PACKAGES:N-lang}
.endif

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_elf_main=no
CONFIGURE_ARGS+= --with-tlib="curses" \
		--disable-canberra \
		--enable-multibyte \
		--enable-cscope

# not directly usable with CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION= 2.71
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		devel/gettext,-tools

.if defined(DEBUG)
MAKE_FLAGS+= STRIP=:
.endif

.if ${FLAVOR:Mlua}
MODULES+=	lang/lua
MODLUA_VERSION=	5.3
CONFIGURE_ENV+=	vi_cv_path_plain_lua=${MODLUA_BIN}
CONFIGURE_ARGS+= --enable-luainterp \
		--with-lua-prefix=${LOCALBASE}
LIB_DEPENDS+=	${MODLUA_LIB_DEPENDS}
WANTLIB+=	${MODLUA_WANTLIB}
.endif

.if ${FLAVOR:Mperl}
CONFIGURE_ARGS+= --enable-perlinterp
WANTLIB+=	perl
.endif

.if ${FLAVOR:Mpython3}
MODULES+=	lang/python
CONFIGURE_ENV+=	vi_cv_path_python3=${MODPY_BIN}
CONFIGURE_ARGS+= --enable-python3interp=yes \
		--enable-pythoninterp=no
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS}
WANTLIB+=	${MODPY_WANTLIB}
.endif

.if ${FLAVOR:Mruby}
MODULES+=	lang/ruby
CONFIGURE_ARGS+= --enable-rubyinterp \
		--with-ruby-command=${RUBY}
LIB_DEPENDS+=	${MODRUBY_LIB_DEPENDS}
WANTLIB+=	${MODRUBY_WANTLIB}
.endif

# GUI options, only one is allowed
.if ${FLAVOR:Mno_x11}
_GUISET+=	ok
CONFIGURE_ARGS+= --disable-gui \
		--without-x
.endif

.if ${FLAVOR:Mgtk3}
_GUISET+=	ok
LIB_DEPENDS+=	x11/gtk+3
CONFIGURE_ARGS+= --enable-gui="gtk3" \
		--enable-xim \
		--with-x
WANTLIB += ICE SM X11 Xt cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 pango-1.0 pangocairo-1.0
.endif

.if "${_GUISET}" != ok
ERRORS=		"Fatal: You must select one (and only one) GUI interface: no_x11 or gtk3"
.endif

RUN_DEPENDS-lang=	editors/vim,-main
PKG_ARCH-lang=		*
LIB_DEPENDS-lang=
WANTLIB-lang=

WRKSRC=		${WRKDIST}/src
SUBST_VARS=	P

.if ${P} != vim91
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
	# the new colour schemes are more consistent in different
	# environments, but in some cases significantly change what
	# people are familiar with.
	# https://github.com/vim/colorschemes
	# https://github.com/vim/vim/issues/10449#issuecomment-1140195027=
	#
	# install a copy of the legacy colour schemes under a different
	# directory to make it easier to revert if desired.
	# you can either use directly in config, or copy the relevant
	# files to .vim/colors which take priority over the files
	# in /usr/local/share/vim.
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/${P}/colors/legacy
	${INSTALL_DATA} ${WRKDIR}/colorschemes-*/legacy_colors/* \
		${PREFIX}/share/vim/${P}/colors/legacy

.if ! ${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_DATA} ${WRKDIST}/runtime/gvim.desktop \
		${PREFIX}/share/applications/gvim.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/runtime/vim48x48.png ${PREFIX}/share/pixmaps/vim.png

RUN_DEPENDS+= devel/desktop-file-utils
RUN_DEPENDS+= x11/gtk+4,-guic
.endif

.include <bsd.port.mk>
