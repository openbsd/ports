# New ports collection makefile for:    vim
# Version required:     5.x
# Date created:		Mon June 8, 1998
# Whom:			Jason Downs (downsj@downsj.com)
#
# Originally from FreeBSD:
# Date created:         Sat June 29, 1996
# Whom:                 David O'Brien (obrien@cs.ucdavis.edu)
#
# $OpenBSD: Makefile,v 1.1 1998/06/09 07:48:48 downsj Exp $
#

DISTNAME=	vim-5.1
CATEGORIES=	editors
MASTER_SITES=	ftp://nuxi.ucdavis.edu/pub/vim/unix/ \
		ftp://ftp.nuxi.com/pub/vim/unix/ \
		ftp://ftp.oce.nl/pub/vim/unix/  \
		ftp://ftp.prz.tu-berlin.de/pub/unix/editors/vim/unix/  \
		ftp://ftp.is.co.za/applications/editors/vim/  \
		ftp://ftp.progsoc.uts.edu.au/pub/vim/

MAINTAINER=     downsj@downsj.com

WRKSRC=		${WRKDIR}/${DISTNAME}/src
PATCH_DIST_ARGS=	-d ${WRKDIR}/${DISTNAME} --forward --quiet -E ${PATCH_DIST_STRIP}
MAKE_FLAGS=	CONF_ARGS=--prefix=${PREFIX} -f
ALL_TARGET=	#
MAN1=		vim.1

.if defined(HAVE_MOTIF)
REQUIRES_MOTIF=	yes
MAKE_FLAGS:=	CONF_OPT_GUI="--enable-gui=motif" MOTIFHOME=${X11BASE} ${MAKE_FLAGS}
.else
MAKE_FLAGS:=	CONF_OPT_GUI="--enable-gui=yes" ${MAKE_FLAGS}
.endif

pre-build:
	@(cd ${WRKSRC}; ${MAKE} distclean)

post-install:
	[ -e ${PREFIX}/bin/gvim ] || /bin/ln -s ${PREFIX}/bin/vim ${PREFIX}/bin/gvim
	@echo "Vim tools (ctags and xxd) are NOT installed by default."
	@echo "You must install them by hand if you want them."
	@echo "cd to ${WRKSRC} and type"
	@echo "'make installtools'."

.include <bsd.port.mk>
