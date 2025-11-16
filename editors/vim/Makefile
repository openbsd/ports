COMMENT=	vi clone with many additional features

# careful with PLISTs if updating; normally use a gui flavour, not no_x11
V=		9.1.1917

DIST_TUPLE=	\
	github vim vim v$V . \
	github vim colorschemes	7506b51cb70b74338d55850e62be0608a9e12cd1 .

PKGNAME=	vim-${V:C/\.0+/./}
CATEGORIES=	editors

HOMEPAGE=	https://www.vim.org/
WRKSRC=		${WRKDIST}/src

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# donation-ware
PERMIT_PACKAGE=	Yes

# ruby 3.2 libraries need ports-gcc
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB +=	c curses iconv intl m sodium

LIB_DEPENDS=	devel/gettext,-runtime \
		security/libsodium

# UI flavours (pick one only)
FLAVORS+=	gtk3 no_x11
# others
FLAVORS+=	lua perl python3 ruby
# bump deps if changing (RUN_DEPENDS in dependent ports picks this up)
FLAVOR?=	gtk3

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_elf_main=no
CONFIGURE_ARGS+= --with-tlib="curses" \
		--disable-canberra \
		--enable-multibyte \
		--enable-cscope \
		--without-wayland

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
MODLUA_SA=	Yes
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
GUI_ONLY=	"@comment "
.else
GUI_ONLY=	""
RUN_DEPENDS+=	devel/desktop-file-utils \
		x11/gtk+4,-guic
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
ERRORS=	"Fatal: You must select one (and only one) GUI interface: no_x11 or gtk3"
.endif

.if ${V:R} == 9.1
P=	vim91
.else
ERRORS=	"Fatal: new major version; update editors/vim-spell and this check"
.endif

SUBST_VARS=	P GUI_ONLY

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
.if ${FLAVOR:Mno_x11}
	rm -f ${PREFIX}/man/{*/,}man1/{e,g,rg}{view,vim,vimdiff}.1
.endif

.include <bsd.port.mk>
