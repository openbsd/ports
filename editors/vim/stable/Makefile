# $OpenBSD: Makefile,v 1.7 2001/06/22 18:45:33 jasoni Exp $

COMMENT= 	"vi clone, many additional features"

PKGNAME=	vim-5.8.4
DISTNAME=	vim-5.8
CATEGORIES=	editors
NEED_VERSION=	1.400
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.home.vim.org/pub/vim/unix/ \
		ftp://ftp.berlin.de.vim.org/misc/editors/vim/unix/ \
		ftp://ftp.is.co.za/applications/editors/vim/ \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/
MASTER_SITES0=	${MASTER_SITES:S/unix/patches/}
DISTFILES=	${DISTNAME}-src.tar.gz ${DISTNAME}-rt.tar.gz
DIST_SUBDIR=	vim

HOMEPAGE=	http://www.vim.org/

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

.for p in 02 03 04 
PATCHFILES+=	5.8.0${p}:0
.endfor

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FLAVORS=	gtk athena motif no_x11
FLAVOR?=	gtk

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+=--with-tliba="curses"

# Internal Compiler Error
.if (${MACHINE_ARCH} == "m68k")
PATCH_LIST=	patch-* sup-m68k
.elif (${MACHINE_ARCH} == "vax")
PATCH_LIST=	patch-* sup-vax
.endif

.if ${FLAVOR:L} == "light"
FLAVOR=no_x11
.endif
.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+=--disable-gui --without-x
.elif ${FLAVOR:L} == "motif" || ${FLAVOR:L} == "lesstif"
CONFIGURE_ARGS+=--enable-gui="motif"
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
USE_MOTIF=any
.elif ${FLAVOR:L} == "athena"
CONFIGURE_ARGS+=--enable-gui="athena"
.elif ${FLAVOR:L} == "gtk"
LIB_DEPENDS=	gtk.1.2::x11/gtk+
CONFIGURE_ARGS+=--enable-gui="gtk"
.endif

.include <bsd.port.mk>
