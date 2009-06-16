# $OpenBSD: Makefile,v 1.98 2009/06/16 11:30:48 sthen Exp $

COMMENT-main=	vi clone, many additional features
COMMENT-lang=	vi clone, NLS subpackage

DISTNAME=	vim-7.2
REVISION=	190
VERSION=	7.2.${REVISION}
# keep PKGNAME for full version number
PKGNAME=	vim-${VERSION}
PKGNAME-main=	vim-${VERSION}p0
PKGNAME-lang=	vim-lang-${VERSION}
P=		${DISTNAME:C/[-\.]//g}
CATEGORIES=	editors
MASTER_SITES=	ftp://ftp.vim.org/pub/vim/unix/ \
		ftp://ftp.home.vim.org/pub/vim/unix/ \
		ftp://ftp.berlin.de.vim.org/unix/
MASTER_SITES0=	${MASTER_SITES:S/unix/patches\/7.2/}
MASTER_SITES1=	${MASTER_SITES:S/unix/extra/}
DISTFILES=	${DISTNAME}.tar.bz2 \
		${DISTNAME}-lang.tar.gz:1
DIST_SUBDIR=	vim72

HOMEPAGE=	http://www.vim.org/
MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

PATCHFILES=	#
_patches!=	jot -w%03d - 1 ${REVISION} 1 | \
	egrep -v '001|007|022|036|041|049|071|072|074|088|089|093|101|138|150|172|173|191'
.for p in ${_patches}
PATCHFILES+=	7.2.${p}:0
.endfor

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

MULTI_PACKAGES=	-main -lang

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
MODULES+=	lang/python
CONFIGURE_ENV+=	vi_cv_path_python=${MODPY_BIN}
CONFIGURE_ARGS+=--enable-pythoninterp \
	--with-python-config-dir=${MODPY_LIBDIR}/config
LIB_DEPENDS+=	${MODPY_LIB_DEPENDS}
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
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xext Xmu Xpm Xt
.elif ${FLAVOR:L:Mathena} && \
	!${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--enable-gui="athena" --with-x --enable-fontset --enable-xim
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xaw Xext Xmu Xpm Xt
.elif ${FLAVOR:L:Mgtk2} && \
		!${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena}
MAKE_FLAGS+=	'LDFLAGS=-pthread'
MAKE_FLAGS+=	'CFLAGS=-pthread'
LIB_DEPENDS+=	gdk-x11-2.0.>=0.11,gdk_pixbuf-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2
CONFIGURE_ARGS+=--enable-gui="gtk2" --with-x --enable-fontset --enable-xim --disable-gtk-check --enable-gtk2-check
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xext Xrender Xt fontconfig freetype m z\
	 	atk-1.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 png expat\
		pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo pthread\
		glitz Xau Xcomposite Xcursor Xdamage Xfixes Xi Xinerama \
		Xrandr pixman-1
.else
ERRORS=		"Fatal: You must select one GUI interface: no_x11, gtk2, athena or motif"
.endif

RUN_DEPENDS-lang=	::${BUILD_PKGPATH}
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
