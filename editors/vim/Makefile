# $OpenBSD: Makefile,v 1.5 1999/04/01 06:20:11 brad Exp $

DISTNAME=	vim-5.3
CATEGORIES=	editors

MAINTAINER=     jasoni@openbsd.org

MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.oce.nl/pub/vim/unix/  \
		ftp://ftp.prz.tu-berlin.de/pub/unix/editors/vim/unix/  \
		ftp://ftp.is.co.za/applications/editors/vim/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/

DISTFILES=	vim-5.3-src.tar.gz vim-5.3-rt.tar.gz

WRKSRC=		${WRKDIR}/${DISTNAME}/src
MAKE_FLAGS=	CONF_ARGS=--prefix=${PREFIX} -f

.if defined(HAVE_MOTIF)
REQUIRES_MOTIF=	yes
MAKE_FLAGS:=	CONF_OPT_GUI="--enable-gui=motif" MOTIFHOME=${X11BASE} ${MAKE_FLAGS}
.else
MAKE_FLAGS:=	CONF_OPT_GUI="--enable-gui=yes" ${MAKE_FLAGS}
.endif

pre-build:
	@(cd ${WRKSRC}; ${MAKE} distclean)

.include <bsd.port.mk>
