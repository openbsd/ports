# $OpenBSD: Makefile,v 1.9 1999/09/27 06:59:03 jasoni Exp $

DISTNAME=		vim-5.5
CATEGORIES=		editors
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
				ftp://ftp.nuxi.com/pub/vim/unix/ \
				ftp://ftp.oce.nl/pub/vim/unix/  \
				ftp://ftp.prz.tu-berlin.de/pub/unix/editors/vim/unix/  \
				ftp://ftp.is.co.za/applications/editors/vim/  \
				ftp://ftp.progsoc.uts.edu.au/pub/vim/ 
DISTFILES=		${DISTNAME}-src.tar.gz ${DISTNAME}-rt.tar.gz

PATCH_SITES=	${MASTER_SITES:S/unix/patches/}
PATCHFILES=		5.5.001 5.5.002 5.5.003 5.5.004 5.5.005 5.5.006

MAINTAINER=		jasoni@openbsd.org

DIST_SUBDIR=		vim
WRKSRC=				${WRKDIR}/${DISTNAME}/src
PATCH_DIST_ARGS=	-d ${WRKDIR}/${DISTNAME} --forward --quiet -E ${PATCH_DIST_STRIP}
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-tliba="curses"

.if !defined(LIGHT_VERSION)
.if defined(HAVE_MOTIF)
REQUIRES_MOTIF=		yes
CONFIGURE_ARGS+=	--enable-gui="motif"
CONFIGURE_ENV+=		MOTIFHOME=${X11BASE}
.elif defined(USE_ATHENA)
CONFIGURE_ARGS+=	--enable-gui="athena"
.else
LIB_DEPENDS=		glib.1.2:${PORTSDIR}/devel/glib \
					gtk.1.2:${PORTSDIR}/x11/gtk+
CONFIGURE_ARGS+= 	--enable-gui="gtk" 
.endif
.else
CONFIGURE_ARGS+= 	--enable-gui="no" --without-x
PKGNAME=			${DISTNAME}-light
PLIST=				${PKGDIR}/PLIST-light
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
