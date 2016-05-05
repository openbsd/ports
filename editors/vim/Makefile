# $OpenBSD: Makefile,v 1.148 2016/05/05 19:52:28 naddy Exp $

COMMENT-main=	vi clone, many additional features
COMMENT-lang=	vi clone, NLS subpackage

V=		7.4.1467
DISTNAME=	vim-$V
DISTFILES=	vim-$V{v$V}.tar.gz
PKGNAME-main=	vim-$V
PKGNAME-lang=	vim-lang-$V
REVISION-main=	0
P=		vim${V:R:S/.//}
CATEGORIES=	editors
MASTER_SITES=	https://github.com/vim/vim/archive/

HOMEPAGE=	http://www.vim.org/

# donation-ware
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c curses

MULTI_PACKAGES=	-main -lang

FULLPKGNAME-lang= vim-lang-$V
FULLPKGPATH-lang= ${PKGPATH},-lang

FLAVORS=	huge gtk2 athena motif no_x11 lua perl python python3 ruby
FLAVOR?=	gtk2

.include <bsd.port.arch.mk>
.if ${FLAVOR:Mno_x11}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-lang}
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= --with-tlib="curses" \
		--enable-multibyte \
		--enable-cscope

AUTOCONF_VERSION= 2.69
BUILD_DEPENDS= ${MODGNU_AUTOCONF_DEPENDS}

.if ${FLAVOR:Mhuge}
CONFIGURE_ARGS+= --with-features=huge
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
WANTLIB+=	m pthread util ${MODPY_WANTLIB}
.endif

.if ${FLAVOR:Mpython3}
MODULES+=	lang/python
MODPY_MAJOR_VERSION = 3
CONFIGURE_ENV+=	vi_cv_path_python3=${MODPY_BIN}
CONFIGURE_ARGS+= --enable-python3interp=yes --enable-pythoninterp=no \
	--with-python3-config-dir=${MODPY_LIBDIR}/config-${MODPY_VERSION}m
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS}
WANTLIB+=	m pthread util ${MODPY_WANTLIB}
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
MODRUBY_REV=	1.8
CONFIGURE_ARGS+= --enable-rubyinterp --with-ruby-command=${RUBY}
LIB_DEPENDS+=	${MODRUBY_LIB_DEPENDS}
WANTLIB+=	m ${MODRUBY_WANTLIB}
.endif

.if ${FLAVOR:Mno_x11} && \
	!${FLAVOR:Mmotif} && !${FLAVOR:Mathena} && !${FLAVOR:Mgtk2}
CONFIGURE_ARGS+= --disable-gui \
		--without-x
WANTLIB+=	m
.elif ${FLAVOR:Mmotif} && \
	!${FLAVOR:Mno_x11} && !${FLAVOR:Mathena} && !${FLAVOR:Mgtk2}
CONFIGURE_ARGS+= --enable-gui="motif" \
		--enable-fontset \
		--enable-xim \
		--with-x
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
LIB_DEPENDS+=	x11/motif
WANTLIB +=	m ICE SM X11 Xmu Xpm Xt Xm
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'
.elif ${FLAVOR:Mathena} && \
	!${FLAVOR:Mno_x11} && !${FLAVOR:Mmotif} && !${FLAVOR:Mgtk2}
CONFIGURE_ARGS+= --enable-gui="athena" \
		--enable-fontset \
		--enable-xim \
		--with-x
WANTLIB +=	m ICE SM X11 Xaw Xmu Xpm Xt
.elif ${FLAVOR:Mgtk2} && \
		!${FLAVOR:Mmotif} && !${FLAVOR:Mno_x11} && !${FLAVOR:Mathena}
MAKE_FLAGS+=	'LDFLAGS=-pthread'
MAKE_FLAGS+=	'CFLAGS=-pthread'
LIB_DEPENDS+=	x11/gtk+2
CONFIGURE_ARGS+= --enable-gui="gtk2" \
		--disable-gtk-check \
		--enable-fontset \
		--enable-gtk2-check \
		--enable-xim \
		--with-x
WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xpm Xrandr Xrender Xt atk-1.0 cairo
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z
.else
ERRORS=		"Fatal: You must select one GUI interface: no_x11, gtk2, athena or motif"
.endif

RUN_DEPENDS-lang=	editors/vim,-main
PKG_ARCH-lang=		*
LIB_DEPENDS-lang=
WANTLIB-lang=
MODULES+=		devel/gettext

WRKSRC=		${WRKDIST}/src
SUBST_VARS=	P

# CONFIGURE_STYLE=autoconf doesn't work
post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

post-configure:
	touch ${WRKBUILD}/auto/config.mk

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/vim/vimfiles/{doc,syntax}
	${INSTALL_DATA} ${FILESDIR}/openbsd.vim \
	    ${PREFIX}/share/vim/vimfiles/syntax/

.if ! ${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_DATA} ${FILESDIR}/gvim.desktop \
		${PREFIX}/share/applications/gvim.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKDIST}/runtime/vim48x48.png ${PREFIX}/share/pixmaps/vim.png

RUN_DEPENDS+= devel/desktop-file-utils
.endif

.include <bsd.port.mk>
