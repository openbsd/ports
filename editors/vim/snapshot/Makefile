# $OpenBSD: Makefile,v 1.40 2002/03/08 23:51:24 lebel Exp $

COMMENT=	"vi clone, many additional features, snapshot version"
COMMENT-lang=	"vi clone, NLS subpackage, snapshot version"

DISTNAME=	vim-6.1
REVISION=	38
VERSION=	6.1a.${REVISION}
PKGNAME=	vim-${VERSION}
DISTNAME=	vim-6.1a
DIR_VERSION=	${DISTNAME:C/[-\.]//g}
CATEGORIES=	editors
NEED_VERSION=	1.500
MASTER_SITES=	ftp://ftp.vim.org/pub/vim/unstable/unix/ \
		ftp://ftp.home.vim.org/pub/vim/unstable/unix/ \
		ftp://ftp.berlin.de.vim.org/misc/editors/vim/unstable/unix/ \
		ftp://ftp.is.co.za/applications/editors/vim/unstable/unix/ \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/unstable/unix/
MASTER_SITES0=  ${MASTER_SITES:S/unix/patches/}
MASTER_SITES1=	${MASTER_SITES:S/unix/extra/}
DISTFILES=	${DISTNAME}.tar.bz2 \
	        ${DISTNAME}-extra.tar.gz:1 \
		${DISTNAME}-lang.tar.gz:1 
DIST_SUBDIR=	vim6

HOMEPAGE=	http://www.vim.org/

MAINTAINER=	David Lebel <lebel@openbsd.org>

_patches!=	jot -w%03d - 1 ${REVISION} 1
.for p in ${_patches}
PATCHFILES+=	6.1a.${p}:0
.endfor

# allow vim to build on m68k and vax
.if (${MACHINE_ARCH} == "m68k")
PATCH_LIST=     patch-* sup-m68k-*
.elif (${MACHINE_ARCH} == "vax")
PATCH_LIST=     patch-* sup-vax-*
.endif

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	gettext iconv

MULTI_PACKAGES= -lang
SUBPACKAGE?=
.for i in ${MULTI_PACKAGES}
PKGNAME$i=      vim$i-${VERSION}
.endfor

FLAVORS=	huge gtk athena motif no_x11 perl python
FLAVOR?=	gtk

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=--with-tlib="curses" --enable-multibyte

.if ${FLAVOR:L:Mhuge}
CONFIGURE_ARGS+=--with-features=huge
.endif

.if ${FLAVOR:L:Mperl}
CONFIGURE_ARGS+=--enable-perlinterp
.endif

.if ${FLAVOR:L:Mpython}
PYTHON_VER=     2.1
CONFIGURE_ARGS+=--enable-pythoninterp \
	--with-python-config-dir=${LOCALBASE}/lib/python${PYTHON_VER}/config
RUN_DEPENDS+=   :python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS=  ${RUN_DEPENDS}
.endif

.if ${FLAVOR:L:Mno_x11} && \
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mathena}
CONFIGURE_ARGS+=--disable-gui --without-x
.elif ${FLAVOR:L:Mmotif} && \
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena}
CONFIGURE_ARGS+=--enable-gui="motif" --with-x --enable-fontset --enable-xim
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
USE_MOTIF=any
.elif ${FLAVOR:L:Mathena} && \
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mmotif}
CONFIGURE_ARGS+=--enable-gui="athena" --with-x --enable-fontset --enable-xim
.elif ${FLAVOR:L:Mgtk} && \
	!${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena}
LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+
CONFIGURE_ARGS+=--enable-gui="gtk" --with-x --enable-fontset --enable-xim
.else
ERRORS+="Fatal: You must select one GUI interface: no_x11, gtk, athena or motif"
.endif

WRKDIST=		${WRKDIR}/${DIR_VERSION}
WRKSRC=			${WRKDIST}/src

SUBST_VARS=     	DIR_VERSION VERSION

# don't try to regenerate the configure script. Works around the fact that
# auto/configure.in is newer than auto/configure.
post-patch:
	touch ${WRKBUILD}/auto/configure

.include <bsd.port.mk>
