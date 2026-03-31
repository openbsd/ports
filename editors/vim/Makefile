COMMENT=	vi clone with many additional features

# careful with PLISTs if updating; normally use a gui flavour, not no_x11
# if there are new languages for manpages, "make fix-plist" will add the
# ${GUI_ONLY} markers as needed for gui-only tools.
V=		9.2.0272

GH_ACCOUNT=	vim
GH_PROJECT=	vim
GH_TAGNAME=	v$V
PKGNAME=	vim-${V:C/\.0+/./}

CATEGORIES=	editors

HOMEPAGE=	https://www.vim.org/
WRKSRC=		${WRKDIST}/src

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# see ${WRKDIST}/LICENSE. freely distributable if unmodified, otherwise
# some restrictions apply. donations are encouraged to help orphans in
# Uganda, see runtime/doc/uganda.txt / https://www.kuwasha.net/
PERMIT_PACKAGE=	Yes

# ruby 3.2 libraries need ports-gcc
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB +=	c curses iconv intl m sodium

LIB_DEPENDS=	devel/gettext,-runtime \
		security/libsodium

# UI flavours (pick none or one)
FLAVORS=	gtk3
# others
FLAVORS +=	lua perl python3 ruby
# bump deps if changing (RUN_DEPENDS in dependent ports picks this up)
FLAVOR ?=

SUBST_VARS=	P GUI_ONLY NO_X11_PKGPATH

DEBUG_PACKAGES=	${BUILD_PACKAGES}

CONFIGURE_STYLE= gnu
USE_GMAKE=	Yes
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_elf_main=no
CONFIGURE_ARGS=	--with-tlib="curses" \
		--disable-canberra \
		--enable-multibyte \
		--enable-cscope \
		--without-wayland

# not directly usable with CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION= 2.71
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		devel/gettext,-tools
.if defined(DEBUG)
MAKE_FLAGS +=	STRIP=:
.endif

.if ${V:R} == 9.2
P=     vim92
.else
ERRORS=        "Fatal: new major version; update editors/vim-spell and this check"
.endif
.include <bsd.port.arch.mk>

.if ${FLAVOR:Mlua}
.  if ${PROPERTIES:Mluajit}
CONFIGURE_ARGS += --enable-luainterp \
		--with-luajit \
		--with-lua-prefix=${LOCALBASE}
LIB_DEPENDS +=	lang/luajit
WANTLIB +=	luajit-5.1
.  else
MODULES +=	lang/lua
MODLUA_VERSION=	5.3
MODLUA_SA=	Yes
CONFIGURE_ENV += vi_cv_path_plain_lua=${MODLUA_BIN}
CONFIGURE_ARGS += --enable-luainterp \
		--with-lua-prefix=${LOCALBASE}
LIB_DEPENDS +=	${MODLUA_LIB_DEPENDS}
WANTLIB +=	${MODLUA_WANTLIB}
.  endif
.endif

.if ${FLAVOR:Mperl}
CONFIGURE_ARGS += --enable-perlinterp
WANTLIB +=	perl
.endif

.if ${FLAVOR:Mpython3}
MODULES +=	lang/python
CONFIGURE_ENV += vi_cv_path_python3=${MODPY_BIN}
CONFIGURE_ARGS += --enable-python3interp=yes \
		--enable-pythoninterp=no
LIB_DEPENDS +=	${MODPY_LIB_DEPENDS}
WANTLIB +=	${MODPY_WANTLIB}
.endif

.if ${FLAVOR:Mruby}
MODULES +=	lang/ruby
CONFIGURE_ARGS += --enable-rubyinterp \
		--with-ruby-command=${RUBY}
LIB_DEPENDS +=	${MODRUBY_LIB_DEPENDS}
WANTLIB +=	${MODRUBY_WANTLIB}
.endif

# GUI options, only one is allowed
.if ${FLAVOR:Mgtk3}
_GUISET +=	ok
LIB_DEPENDS +=	x11/gtk+3
CONFIGURE_ARGS += --enable-gui="gtk3" \
		--enable-xim \
		--with-x
WANTLIB += ICE SM X11 Xt cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 pango-1.0 pangocairo-1.0
.endif

.if empty(_GUISET)
_GUISET +=	ok
CONFIGURE_ARGS += --disable-gui \
		--without-x
GUI_ONLY=	"@comment "
NO_X11_PKGPATH=	"@pkgpath editors/vim,no_x11${FLAVOR_EXT:S/-/,/g}"
.else
GUI_ONLY=	""
NO_X11_PKGPATH=	"@comment"
RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+4,-guic
.endif

.if "${_GUISET}" != ok
ERRORS=	"Fatal: invalid combination of UI flavours"
.endif

do-gen:
	cd ${WRKSRC}; ${AUTOCONF_ENV} autoconf

post-configure:
	touch ${WRKBUILD}/auto/config.mk

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/{doc,syntax}
	${INSTALL_DATA} ${FILESDIR}/openbsd.vim \
		${PREFIX}/share/vim/vimfiles/syntax/
.if ${GUI_ONLY} == ""
	rm -f ${PREFIX}/man/{*/,}man1/{e,g,rg}{view,vim,vimdiff}.1
.endif

fix-plist:
	@cp pkg/PLIST pkg/PLIST.orig
	@for i in {e,g,rg}{view,vim,vimdiff}.1; do \
	    echo sed -i -E "s,^(@man .*/man1/$$i),\$${GUI_ONLY}\1," pkg/PLIST; \
	    sed -i -E "s,^(@man .*/man1/$$i),\$${GUI_ONLY}\1," pkg/PLIST; \
	done
	-@diff -u0 pkg/PLIST.orig pkg/PLIST

.include <bsd.port.mk>
