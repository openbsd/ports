# $OpenBSD: Makefile,v 1.24 2000/03/24 23:28:07 espie Exp $

DISTNAME=	vim-5.6
DIST_SUBDIR=	vim
CATEGORIES=	editors
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.oce.nl/pub/vim/unix/  \
		ftp://ftp.berlin.de.vim.org/misc/editors/vim/unix/ \
		ftp://ftp.is.co.za/applications/editors/vim/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/ 
MASTER_SITES0=	${MASTER_SITES:S/unix/patches/}
DISTFILES=	${DISTNAME}-src.tar.gz ${DISTNAME}-rt.tar.gz

.for p in 01 02 03 05 06 10 11 12
PATCHFILES+=	5.6.0${p}:0
.endfor
.if defined(PATCH_DEBUG)
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

MAINTAINER=	jasoni@openbsd.org

LICENSE_TYPE=           "COPY GNU NONE"
PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   Yes

FAKE=Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}'
CONFIGURE_ARGS+=--sysconfdir='$${DESTDIR}${PREFIX}'

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
LIB_DEPENDS=	gtk.1.2::x11/gtk+
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
