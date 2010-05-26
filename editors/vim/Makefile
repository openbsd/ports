# $OpenBSD: Makefile,v 1.105 2010/05/26 22:15:42 stsp Exp $

COMMENT-main=	vi clone, many additional features
COMMENT-lang=	vi clone, NLS subpackage
COMMENT-spell=	vi clone, spell-check subpackage

DISTNAME=	vim-7.2
REVISION=	416 # 267, 287, 301, 314, 342
VERSION=	7.2.${REVISION}
# keep PKGNAME for full version number
PKGNAME=	vim-${VERSION}
PKGNAME-main=	vim-${VERSION}
PKGNAME-lang=	vim-lang-${VERSION}
PKGNAME-spell=	vim-spell-${VERSION}
P=		${DISTNAME:C/[-\.]//g}
CATEGORIES=	editors
MASTER_SITES=	ftp://ftp.vim.org/pub/vim/unix/ \
		ftp://ftp.home.vim.org/pub/vim/unix/ \
		ftp://ftp.berlin.de.vim.org/unix/
MASTER_SITES0=	${MASTER_SITES:S/unix/patches\/7.2/}
MASTER_SITES1=	${MASTER_SITES:S/unix/extra/}
MASTER_SITES2=	${MASTER_SITES:S/unix/runtime\/spell/}
DISTFILES=	${DISTNAME}.tar.bz2 \
		${DISTNAME}-lang.tar.gz:1
EXTRACT_ONLY=	${DISTNAME}.tar.bz2 \
		${DISTNAME}-lang.tar.gz
DIST_SUBDIR=	vim72
_spellfiles=	af.latin1.spl af.utf-8.spl am.utf-8.spl bg.cp1251.spl \
		bg.utf-8.spl ca.latin1.spl ca.utf-8.spl cs.cp1250.spl \
		cs.iso-8859-2.spl cs.utf-8.spl cy.iso-8859-14.spl \
		cy.utf-8.spl da.latin1.spl da.utf-8.spl de.latin1.spl \
		de.utf-8.spl el.iso-8859-7.spl el.utf-8.spl en.ascii.spl \
		en.latin1.spl en.utf-8.spl eo.iso-8859-3.spl eo.utf-8.spl \
		es.latin1.spl es.utf-8.spl fo.latin1.spl fo.utf-8.spl \
		fr.latin1.spl fr.utf-8.spl ga.latin1.spl ga.utf-8.spl \
		gd.latin1.spl gd.utf-8.spl gl.latin1.spl gl.utf-8.spl \
		he.iso-8859-8.spl he.utf-8.spl hr.cp1250.spl \
		hr.iso-8859-2.spl hr.utf-8.spl hu.cp1250.spl \
		hu.iso-8859-2.spl hu.utf-8.spl id.latin1.spl id.utf-8.spl \
		it.latin1.spl it.utf-8.spl ku.iso-8859-9.spl ku.utf-8.spl \
		la.latin1.spl la.utf-8.spl lt.iso-8859-13.spl lt.utf-8.spl \
		lv.iso-8859-13.spl lv.utf-8.spl mg.latin1.spl mg.utf-8.spl \
		mi.iso-8859-4.spl mi.utf-8.spl ms.latin1.spl ms.utf-8.spl \
		nb.latin1.spl nb.utf-8.spl nl.latin1.spl nl.utf-8.spl \
		nn.latin1.spl nn.utf-8.spl ny.ascii.spl ny.iso-8859-14.spl \
		ny.utf-8.spl pl.cp1250.spl pl.iso-8859-2.spl pl.utf-8.spl \
		pt.latin1.spl pt.utf-8.spl ro.cp1250.spl ro.iso-8859-2.spl \
		ro.utf-8.spl ru.cp1251.spl ru.koi8-r.spl ru.utf-8.spl \
		rw.latin1.spl rw.utf-8.spl sk.cp1250.spl sk.iso-8859-2.spl \
		sk.utf-8.spl sl.cp1250.spl sl.iso-8859-2.spl sl.utf-8.spl \
		sv.latin1.spl sv.utf-8.spl sw.latin1.spl sw.utf-8.spl \
		tet.latin1.spl tet.utf-8.spl th.utf-8.spl tl.latin1.spl \
		tl.utf-8.spl tn.cp1250.spl tn.iso-8859-2.spl tn.utf-8.spl \
		uk.koi8-u.spl uk.utf-8.spl yi-tr.utf-8.spl yi.latin1.spl \
		yi.utf-8.spl zu.ascii.spl zu.latin1.spl zu.utf-8.spl
.for s in ${_spellfiles}
DISTFILES+=	${s}:2
.endfor
HOMEPAGE=	http://www.vim.org/
MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

PATCHFILES=	# 
_patches!=	jot -w%03d - 1 ${REVISION} 1 | \
	egrep -v '001|007|022|036|041|049|071|072|074|088|089|093|101|138|150|172|173|191|194|204|205|206|212|216|219|233|236|247|248|250|260|302|320|323|326|336|350|352|362|364|365|372|374|377|384|388|393|399|400|403|415'
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

MULTI_PACKAGES=	-main -lang -spell

FLAVORS=	huge gtk2 athena motif no_x11 perl python ruby
FLAVOR?=	gtk2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
CONFIGURE_ARGS+=--with-tlib="curses" --enable-multibyte --enable-cscope

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
MODULES+=	lang/ruby
CONFIGURE_ARGS+=--enable-rubyinterp
MAKE_ENV+=	RUBY="${RUBY}"
LIB_DEPENDS+=	${MODRUBY_LIB_DEPENDS}
WANTLIB+=	m
.endif

.if ${FLAVOR:L:Mno_x11} && \
	!${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mathena} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--disable-gui --without-x
WANTLIB+=	m
.elif ${FLAVOR:L:Mmotif} && \
	!${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--enable-gui="motif" --with-x --enable-fontset --enable-xim
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
USE_MOTIF=	any
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xext Xmu Xpm Xt pthread-stubs xcb
.elif ${FLAVOR:L:Mathena} && \
	!${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=--enable-gui="athena" --with-x --enable-fontset --enable-xim
USE_X11=	Yes
WANTLIB+=	ICE SM X11 Xaw Xext Xmu Xpm Xt pthread-stubs xcb
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
		Xrandr pixman-1 pthread-stubs xcb
.else
ERRORS=		"Fatal: You must select one GUI interface: no_x11, gtk2, athena or motif"
.endif

RUN_DEPENDS-lang=	::${BUILD_PKGPATH}
PKG_ARCH-lang=		*
LIB_DEPENDS-lang=
WANTLIB-lang=

RUN_DEPENDS-spell=	::${BUILD_PKGPATH}
PKG_ARCH-spell=		*
LIB_DEPENDS-spell=
WANTLIB-spell=

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
.for s in ${_spellfiles}
	${INSTALL_DATA} ${FULLDISTDIR}/${s} ${PREFIX}/share/vim/${P}/spell
.endfor

.include <bsd.port.mk>
