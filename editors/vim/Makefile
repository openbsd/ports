# $OpenBSD: Makefile,v 1.12 1999/12/09 19:59:24 brad Exp $

DISTNAME=	vim-5.5
CATEGORIES=	editors
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.oce.nl/pub/vim/unix/  \
		ftp://ftp.berlin.de.vim.org/misc/editors/vim/unix/ \
		ftp://ftp.is.co.za/applications/editors/vim/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/ 
DISTFILES=	${DISTNAME}-src.tar.gz ${DISTNAME}-rt.tar.gz
DIST_SUBDIR=	vim

PATCH_SITES=	${MASTER_SITES:S/unix/patches/}
.for p in 01 02 03 04 05 06 08 09 11 12 13 14 15 17 18 19 20 21 22 23 25 26 27 29 30 32 33 34 35 36 37 38 39 40 41 42 43 44 45 47 48 49 50 51 52 53 54 55 56 57 58 59 61 63 64 65 66
PATCHFILES+=	5.5.0${p}
.endfor
.if defined(PATCH_DEBUG)
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} -E ${PATCH_DIST_STRIP}
.else
PATCH_DIST_ARGS=-d ${WRKDIR}/${DISTNAME} --forward --quiet -E ${PATCH_DIST_STRIP}
.endif

MAINTAINER=	jasoni@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--with-tliba="curses"

.if defined(LIGHT_VERSION) && ${LIGHT_VERSION:U} == YES
CONFIGURE_ARGS+=--disable-gui --without-x
PKGNAME=	${DISTNAME}-light
PLIST=		${PKGDIR}/PLIST-light
.else
.if defined(HAVE_MOTIF)
REQUIRES_MOTIF=	yes
CONFIGURE_ARGS+=--enable-gui="motif"
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
.elif defined(USE_ATHENA) && ${USE_ATHENA:U} == YES
CONFIGURE_ARGS+=--enable-gui="athena"
.else
LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+
CONFIGURE_ARGS+=--enable-gui="gtk" 
.endif
.endif

WRKSRC=	${WRKDIR}/${DISTNAME}/src

pre-configure:
.if !defined(NO_WARNINGS)
	@echo ""
	@echo "***"
	@echo "*** To build light version, do 'make LIGHT_VERSION=yes'."
	@echo "*** To use Athena GUI, do 'make USE_ATHENA=yes'."
	@echo "*** GTK GUI is the default."
	@echo "***"
	@echo ""
.endif

.include <bsd.port.mk>
