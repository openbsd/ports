# $OpenBSD: Makefile,v 1.18 2001/10/30 20:17:43 lebel Exp $

COMMENT=	"vi clone, many additional features"

DISTNAME=	vim-6.0
PKGNAME=	${DISTNAME}.40
CATEGORIES=	editors
NEED_VERSION=	1.487
MASTER_SITES=	ftp://ftp.vim.org/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.home.vim.org/pub/vim/unix/ \
		ftp://ftp.berlin.de.vim.org/misc/editors/vim/unix/ \
		ftp://ftp.is.co.za/applications/editors/vim/unix/ \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/unix/
MASTER_SITES0=  ${MASTER_SITES:S/unix/patches/}
MASTER_SITES1=	${MASTER_SITES:S/unix/extra/}
DISTFILES=	${DISTNAME}.tar.bz2 \
	        ${DISTNAME}-extra.tar.gz:1
#	   	${DISTNAME}-lang.tar.gz:1 
DIST_SUBDIR=	vim6

HOMEPAGE=	http://www.vim.org/

MAINTAINER=	David Lebel <lebel@openbsd.org>

.for p in 01 02 03 04 05 06 07 08 09 10 11 13 14 15 16 17 18 19 20 21 22 23 \
	  24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
PATCHFILES+=   6.0.0${p}:0
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
RUN_DEPENDS+=   python${PYTHON_VER}::lang/python
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
	!${FLAVOR:L:Mgtk} && !${FLAVOR:L:Mno_x11} && ${FLAVOR:L:Mmotif}
CONFIGURE_ARGS+=--enable-gui="athena" --with-x --enable-fontset --enable-xim
.elif ${FLAVOR:L:Mgtk} && \
	!${FLAVOR:L:Mmotif} && !${FLAVOR:L:Mno_x11} && !${FLAVOR:L:Mathena}
MODULES+=	gtk
CONFIGURE_ARGS+=--enable-gui="gtk" --with-x --enable-fontset --enable-xim
.else
ERRORS+="Fatal: You must select one GUI interface: no_x11, gtk, athena or motif"
.endif

WRKDIST=		${WRKDIR}/vim60${V}
WRKSRC=			${WRKDIST}/src

.include <bsd.port.mk>
