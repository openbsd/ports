COMMENT=	vi clone with many additional features

V=		8.3.0000
DIST_TUPLE=	srht sircmpwn vim-classic 615c81ef30334a7af00c409aaee07f37e8107ba0 .
PKGNAME=	vim-classic-${V:C/\.0+/./}0pre20260326
CATEGORIES=	editors

HOMEPAGE=	https://sr.ht/~sircmpwn/vim-classic/
WRKSRC=		${WRKDIST}/src

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# see ${WRKDIST}/LICENSE. freely distributable if unmodified, otherwise
# some restrictions apply. donations are encouraged to help orphans in
# Uganda, see runtime/doc/uganda.txt / https://www.kuwasha.net/
PERMIT_PACKAGE=	Yes

WANTLIB +=	c curses iconv intl m perl

LIB_DEPENDS=	devel/gettext,-runtime

# UI flavours (pick none or one)
FLAVORS=	gtk3
# others
FLAVORS +=	lua python3
# bump deps if changing default flavour
FLAVOR ?=

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
		--enable-perlinterp

# not directly usable with CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION= 2.69
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		devel/gettext,-tools
.if defined(DEBUG)
MAKE_FLAGS += STRIP=:
.endif

#.if ${V:R} == 8.2
P=	vim82
#.else
#ERRORS=	"Fatal: new major version; update this check and any other ports if needed"
#.endif

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

.if ${FLAVOR:Mpython3}
MODULES +=	lang/python
CONFIGURE_ENV += vi_cv_path_python3=${MODPY_BIN}
CONFIGURE_ARGS += --enable-python3interp=yes \
		--enable-pythoninterp=no
LIB_DEPENDS +=	${MODPY_LIB_DEPENDS}
WANTLIB +=	${MODPY_WANTLIB}
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
.else
GUI_ONLY=	""
RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+4,-guic
.endif

.if "${_GUISET}" != ok
ERRORS=	"Fatal: invalid combination of UI flavours"
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
.if !empty(_GUI_ONLY)
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
