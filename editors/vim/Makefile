# $OpenBSD: Makefile,v 1.8 1999/09/01 16:56:35 brad Exp $

DISTNAME=	vim-5.4
CATEGORIES=	editors
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.oce.nl/pub/vim/unix/  \
		ftp://ftp.prz.tu-berlin.de/pub/unix/editors/vim/unix/  \
		ftp://ftp.is.co.za/applications/editors/vim/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/
DISTFILES=	${DISTNAME}-src.tar.gz ${DISTNAME}-rt.tar.gz

PATCH_SITES=	${MASTER_SITES:S/unix/patches/}
PATCHFILES=	5.4.1 5.4.2 5.4.3 5.4.4 5.4.5 5.4.6 5.4.7 5.4.8 5.4.9 5.4.10 \
		5.4.11 5.4.12 5.4.13 5.4.14 5.4.15 5.4.16 5.4.17 5.4.18 \
		5.4.19 5.4.20 5.4.21 5.4.22 5.4.23 5.4.24 5.4.25 5.4.26 \
		5.4.27 5.4.28 5.4.29 5.4.30 5.4.31 5.4.32 5.4.33 5.4.34 \
		5.4.35 5.4.36 5.4.37 5.4.38 5.4.39 5.4.40 5.4.41 5.4.42 \
		5.4.43 5.4.44 5.4.45 5.4.46 5.4.47 5.4.48 5.4.49

MAINTAINER=	jasoni@openbsd.org

DIST_SUBDIR=	vim
WRKSRC=		${WRKDIR}/${DISTNAME}/src
PATCH_DIST_ARGS=	-d ${WRKDIR}/${DISTNAME} --forward --quiet -E ${PATCH_DIST_STRIP}
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --with-tliba="curses"

.if !defined(LIGHT_VERSION)
.if defined(HAVE_MOTIF)
REQUIRES_MOTIF=	yes
CONFIGURE_ARGS+= --enable-gui="motif"
CONFIGURE_ENV+=	MOTIFHOME=${X11BASE}
.elif defined(USE_ATHENA)
CONFIGURE_ARGS+= --enable-gui="athena"
.else
LIB_DEPENDS=	glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+
CONFIGURE_ARGS+= --enable-gui="gtk" 
.endif
.else
CONFIGURE_ARGS+= --enable-gui="no" --without-x
PKGNAME=	${DISTNAME}-light
PLIST=		${PKGDIR}/PLIST-light
.endif

pre-configure:
.if !defined(NO_WARNINGS)
	@${ECHO}
	@${ECHO} "***"
	@${ECHO} "*** To build light version, do 'make LIGHT_VERSION=yes'."
	@${ECHO} "*** To use Athena GUI, do 'make USE_ATHENA=yes'."
	@${ECHO} "*** GTK GUI is the default."
	@${ECHO} "***"
	@${ECHO}
.endif

.include <bsd.port.mk>
