# $OpenBSD: Makefile,v 1.25 2000/04/10 16:39:14 jasoni Exp $

DISTNAME=	vim-5.6
CATEGORIES=	editors
NEED_VERSION=	1.251
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

.for p in 01 02 03 05 06 10 11 12 13 14 15 16 17 18 19 21 22 25 27 28 29 30 \
	  31 32 33 35 36 37 38 39 40 41 42 46 47
PATCHFILES+=	5.6.0${p}:0
.endfor
.if defined(PATCH_DEBUG)
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

MAINTAINER=	jasoni@openbsd.org

PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   Yes

FLAVORS=	gtk athena motif light
FLAVOR?=	gtk

FAKE=		Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}'
CONFIGURE_ARGS+=--sysconfdir='$${DESTDIR}${PREFIX}'
CONFIGURE_ARGS+=--with-tliba="curses"

# Internal Compiler Error
.if (${MACHINE_ARCH} == "m68k")
PATCH_LIST=	patch-* sup-m68k
.endif

.if ${FLAVOR:L:Mlight}
PLIST=		${PKGDIR}/PLIST-light
CONFIGURE_ARGS+=--disable-gui --without-x
.elif ${FLAVOR:L:Mmotif}
CONFIGURE_ARGS+=--enable-gui="motif"
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
.elif ${FLAVOR:L:Mathena}
CONFIGURE_ARGS+=--enable-gui="athena"
.elif ${FLAVOR:L:Mgtk}
LIB_DEPENDS=	gtk.1.2::x11/gtk+
CONFIGURE_ARGS+=--enable-gui="gtk" 
.endif

WRKDIST=	${WRKDIR}/${DISTNAME}/src

.include <bsd.port.mk>
