# $OpenBSD: Makefile,v 1.7 1999/07/28 06:01:33 jasoni Exp $

DISTNAME=	vim-5.4
CATEGORIES=	editors

MAINTAINER=     jasoni@openbsd.org

MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.oce.nl/pub/vim/unix/  \
		ftp://ftp.prz.tu-berlin.de/pub/unix/editors/vim/unix/  \
		ftp://ftp.is.co.za/applications/editors/vim/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/

DISTFILES=	vim-5.4-src.tar.gz vim-5.4-rt.tar.gz

WRKSRC=			${WRKDIR}/${DISTNAME}/src
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--prefix=${PREFIX} --with-tlib=curses

.if !defined(LIGHT_VERSION)
.if defined(HAVE_MOTIF)
REQUIRES_MOTIF=		yes
CONFIGURE_ARGS+=	--enable-gui=motif
CONFIGURE_ENV+=		MOTIFHOME=${X11BASE}
.elif defined(USE_ATHENA)
CONFIGURE_ARGS+=	--enable-gui=athena
.else
LIB_DEPENDS+=		glib.1.2:${PORTSDIR}/devel/glib \
			gtk.1.2:${PORTSDIR}/x11/gtk+
CONFIGURE_ARGS+=	--enable-gui=gtk 
.endif
.else
CONFIGURE_ARGS+=	--enable-gui=no --without-x
PKGNAME=		${DISTNAME}-light
PLIST=			${PKGDIR}/PLIST-light
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
