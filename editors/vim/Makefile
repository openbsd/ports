# $OpenBSD: Makefile,v 1.221 2021/11/22 15:00:42 espie Exp $

COMMENT-main=	vi clone, many additional features
COMMENT-lang=	vi clone, NLS subpackage

# if updating, regen plists with a gui flavour so -lang isn't messed up
V=		8.2.3596
GH_ACCOUNT=	vim
GH_PROJECT=	vim
GH_TAGNAME=	v$V

T=		${V:C/\.0+/./}
PKGNAME=	vim-$T
FULLPKGNAME-lang= vim-lang-$T
FULLPKGPATH-lang= ${PKGPATH},-lang
P=		vim${V:R:S/.//}
CATEGORIES=	editors

HOMEPAGE=	https://www.vim.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# donation-ware
PERMIT_PACKAGE=	Yes

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

AUTOCONF_VERSION= 2.69
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		devel/gettext,-tools

.if defined(DEBUG)
MAKE_FLAGS+= STRIP=:
.endif

.if ${FLAVOR:Mlua}
MODULES+=	lang/lua
MODLUA_VERSION=	5.1
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
MODPY_MAJOR_VERSION = 3
CONFIGURE_ENV+=	vi_cv_path_python3=${MODPY_BIN}
CONFIGURE_ARGS+= --enable-python3interp=yes \
		--enable-pythoninterp=no \
		--with-python3-config-dir=${MODPY_LIBDIR}/config-${MODPY_VERSION}m
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

.if ${P} != vim82
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
