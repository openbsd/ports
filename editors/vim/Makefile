# $OpenBSD: Makefile,v 1.36 2001/03/26 04:04:49 jasoni Exp $

PKGNAME=	vim-5.7.25
DISTNAME=	vim-5.7
CATEGORIES=	editors
NEED_VERSION=	1.305
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.oce.nl/pub/vim/unix/  \
		ftp://ftp.berlin.de.vim.org/misc/editors/vim/unix/ \
		ftp://ftp.is.co.za/applications/editors/vim/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/ 
MASTER_SITES0=	${MASTER_SITES:S/unix/patches/}
DISTFILES=	${DISTNAME}-src.tar.gz ${DISTNAME}-rt.tar.gz
DIST_SUBDIR=	vim

HOMEPAGE=	http://www.vim.org

.for p in 01 02 03 04 05 06 07 08 10 12 13 14 15 16 17 18 19 21 22 23 24 25
PATCHFILES+=	5.7.0${p}:0
.endfor
.if defined(PATCH_DEBUG)
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} --forward --quiet -E ${PATCH_DIST_STRIP}
.endif


MAINTAINER=	Jason Ish <jasoni@openbsd.org>

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
.elif ${FLAVOR:L} == "motif"
CONFIGURE_ARGS+=--enable-gui="motif"
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
USE_MOTIF=Yes
.elif ${FLAVOR:L} == "athena"
CONFIGURE_ARGS+=--enable-gui="athena"
.elif ${FLAVOR:L} == "gtk"
LIB_DEPENDS=	gtk.1.2::x11/gtk+
CONFIGURE_ARGS+=--enable-gui="gtk" 
.endif

WRKDIST=		${WRKDIR}/${DISTNAME}/src

.include <bsd.port.mk>
