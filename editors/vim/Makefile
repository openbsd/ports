# $OpenBSD: Makefile,v 1.19 2000/02/10 15:39:13 jasoni Exp $

DISTNAME=	vim-5.6
DIST_SUBDIR=	vim
CATEGORIES=	editors
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.oce.nl/pub/vim/unix/  \
		ftp://ftp.berlin.de.vim.org/misc/editors/vim/unix/ \
		ftp://ftp.is.co.za/applications/editors/vim/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/ 
MASTER_SITES0=	${MASTER_SITES:S/unix/patches/}
DISTFILES=	${DISTNAME}-src.tar.gz ${DISTNAME}-rt.tar.gz
EXTRACT_ONLY=	${DISTNAME}-src.tar.gz ${DISTNAME}-rt.tar.gz

NEED_VERSION=	1.175

.for p in 01 02 03 05 06 10 11 12
DISTFILES+=	5.6.0${p}:0
PATCHFILES+=	5.6.0${p}
.endfor
.if defined(PATCH_DEBUG)
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--with-tliba="curses"

# Internal Compiler Error
.if (${MACHINE_ARCH} == "m68k")
PATCH_LIST=	patch-* sup-m68k
.endif

.if defined(LIGHT_VERSION) && ${LIGHT_VERSION:U} == YES
CONFIGURE_ARGS+=--disable-gui --without-x
PKGNAME=	${DISTNAME}-light
PLIST=		${PKGDIR}/PLIST-light
.else
.if defined(USE_MOTIF) && ${USE_MOTIF:U} == YES
CONFIGURE_ARGS+=--enable-gui="motif"
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
.elif defined(USE_ATHENA) && ${USE_ATHENA:U} == YES
CONFIGURE_ARGS+=--enable-gui="athena"
.else
LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+
CONFIGURE_ARGS+=--enable-gui="gtk" 
.endif
.endif

WRKDIST=	${WRKDIR}/${DISTNAME}/src

pre-fetch:
.if !defined(NO_WARNINGS)
	@echo ""
	@echo "***"
	@echo "*** To build light version, do 'make LIGHT_VERSION=yes'."
	@echo "*** To use the Motif GUI, do 'make USE_MOTIF=yes'."
	@echo "*** To use the Athena GUI, do 'make USE_ATHENA=yes'."
	@echo "*** The GTK GUI is the default."
	@echo "***"
	@echo ""
.endif

.include <bsd.port.mk>
